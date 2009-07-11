/*
 * opencog/hypertable/AtomspaceHTabler.h
 *
 * Copyright (C) 2009 Jeremy Schlatter <jeremy.schlatter@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License v3 as
 * published by the Free Software Foundation and including the exceptions
 * at http://opencog.org/wiki/Licenses
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program; if not, write to:
 * Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#ifndef _OPENCOG_ATOMSPACE_HTABLER_H
#define _OPENCOG_ATOMSPACE_HTABLER_H

#include "Common/Compat.h"
#include "Hypertable/Lib/Client.h"

#include <string>

#include "opencog/atomspace/HandleEntry.h"
#include "opencog/atomspace/HandleSet.h"
#include "opencog/atomspace/Node.h"
#include "opencog/atomspace/Link.h"


namespace opencog
{

/**
 * Persistent Atom storage, backed by Hypertable.
 */
class AtomspaceHTabler
{
private:
        Table *m_handle_table;
        TableMutator *m_handle_mutator;
        Table *m_name_table;
        TableMutator *m_name_mutator;
        Table *m_outset_table;
        TableMutator *m_outset_mutator;
        
        KeySpec make_key(Handle);
        KeySpec make_key(Type, std::vector<Handle>&);
        KeySpec make_key(Type, std::string);
public:
        AtomspaceHTabler(){
            Client c;
            m_handle_table = c.open_table("Atomtable");
            m_handle_mutator = m_handle_table->create_mutator();
            m_name_table = c.open_table("Nametable");
            m_name_mutator = m_name_table->create_mutator();
            m_outset_table = c.open_table("Outsettable");
            m_outset_mutator = m_outset_table->create_mutator();
        }      
        
        virtual ~AtomspaceHTabler(){
            delete m_handle_table;
            delete m_handle_mutator;
            delete m_name_table;
            delete m_name_mutator;
            delete m_outset_table;
            delete m_outset_mutator;
        }
        
        /** 
         * Return a pointer to a link of the indicated type and outset,
         * if it exists; else return NULL.
         */
		virtual Link * getLink(Type, const std::vector<Handle>&) const;
		
        /** 
         * Return a pointer to a node of the indicated type and name,
         * if it exists; else return NULL.
         */
        virtual Node * getNode(Type, const char *) const;

        /**
         * Recursively store the atom and anything in its outgoing set.
         * If the atom is already in storage, this will update it's 
         * truth value, etc. 
         */
        virtual void storeAtom(Handle);
		
        /**
         * Return a vector containing the handles of the entire incoming
         * set of the indicated handle. 
         */
        virtual std::vector<Handle> getIncomingSet(Handle) const;
		
        /** 
         * Return a pointer to an Atom associated with the given
         * handle, if it exists; else return NULL.
         */
        virtual Atom * getAtom(Handle) const;

};

} // namespace opencog

#endif // _OPENCOG_ATOMSPACE_HTABLER_H
