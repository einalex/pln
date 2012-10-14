/*
 * SchemeEval.h
 *
 * Simple scheme expression evaluator
 * Copyright (c) 2008 Linas Vepstas <linas@linas.org>
 */

#ifndef OPENCOG_SCHEME_EVAL_H
#define OPENCOG_SCHEME_EVAL_H
#ifdef HAVE_GUILE

#include <string>
#include <pthread.h>
#include <libguile.h>
#include <opencog/server/CogServer.h>
#include <opencog/atomspace/Handle.h>
#include <opencog/util/exceptions.h>

namespace opencog {

class AtomSpace;

class SchemeEval
{
	private:
		// Initialization stuff
		void init(void);
		static void * c_wrap_init(void *);
		void per_thread_init(void);
		void thread_lock(void);
		void thread_unlock(void);
	
		// destructor stuff
		void finish(void);
		static void * c_wrap_finish(void *);
	
		// Things related to evaluation
		std::string do_eval(const std::string &);
		static void * c_wrap_eval(void *);
		static void * c_wrap_eval_h(void *);
		const std::string *pexpr;
		std::string answer;
		
		std::string input_line;
		bool pending_input;
	
		// straight-up evaluation
		static SCM wrap_scm_eval(void *);
		SCM do_scm_eval(SCM);
		SCM do_scm_eval_str(const std::string &);
	
		// Handle apply
		Handle do_apply(const std::string& func, Handle varargs);
		SCM do_apply_scm(const std::string& func, Handle varargs);
		Handle hargs;
		static void * c_wrap_apply(void *);
		static void * c_wrap_apply_scm(void *);
	
		// Error handling stuff
		SCM error_string_port;
		SCM captured_stack;
		static SCM preunwind_handler_wrapper(void *, SCM, SCM);
		static SCM catch_handler_wrapper(void *, SCM, SCM);
		SCM preunwind_handler(SCM, SCM);
		SCM catch_handler(SCM, SCM);
		bool caught_error;
	
		// printing of basic types
		static std::string prt(SCM);
	
		// output port
		SCM outport;
		SCM saved_outport;
	
		// Make constructor, destructor private; force
		// everyone to use the singleton instance, for now.
		SchemeEval(AtomSpace* a);
		~SchemeEval();
		static SchemeEval* singletonInstance;
		AtomSpace *atomspace;
		
	public:
					
		std::string eval(const std::string &);
		Handle eval_h(const std::string &);
		Handle apply(const std::string& func, Handle varargs);
		std::string apply_generic(const std::string& func, Handle varargs);
	
		bool input_pending(void);
		void clear_pending(void);
		bool eval_error(void);
	
		// Someone thinks that there some scheme threading bug somewhere,
		// and the current hack around this is to use a singleton instance.
		static SchemeEval& instance(AtomSpace* atomspace = NULL)
		{
			if (!singletonInstance) {
                if (!atomspace) {
                    // We create our own local AtomSpace to send calls to the
                    // event loop (otherwise the getType cache breaks)
                    atomspace = new AtomSpace(cogserver().getAtomSpace());
                }
				singletonInstance = new SchemeEval(atomspace);
            }
            else if (atomspace && singletonInstance->atomspace->atomSpaceAsync != atomspace->atomSpaceAsync) {
                // Someone is trying to initialise the Scheme interpretator
                // on a different AtomSpace. because of the singleton design
                // there is no easy way to support this...
                throw (RuntimeException(TRACE_INFO, "Trying to re-initialise"
                            " scm interpretor with different AtomSpaceAsync ptr!"));
            }
			return *singletonInstance;
		}
};

/** For easier wrapping by Cython */
std::string eval_scheme(std::string &s);

}

#else /* HAVE_GUILE */

#include <opencog/atomspace/Handle.h>

namespace opencog {

class SchemeEval
{
	private:
		static SchemeEval* singletonInstance;
	public:
		std::string eval(const std::string &s) { return ""; }
		Handle eval_h(const std::string &s) { return Handle::UNDEFINED; }
		Handle apply(const std::string &s, Handle args) {
			return Handle::UNDEFINED; }
		std::string apply_generic(const std::string& f, Handle args) {
			return ""; }
	
		bool input_pending(void) { return false; }
		void clear_pending(void) {}

		// If guile is not installed, then *every* call to eval_error()
		// must report that an error occurred! 
		bool eval_error(void) { return true; }

		static SchemeEval& instance(AtomSpace* atomspace = NULL)
		{
			if (!singletonInstance) {
				singletonInstance = new SchemeEval();
            }

			return *singletonInstance;
		}
};

std::string eval_scheme(std::string &s) {
	std::string ret("");
	return ret;
}

}
#endif/* HAVE_GUILE */

#endif /* OPENCOG_SCHEME_EVAL_H */
