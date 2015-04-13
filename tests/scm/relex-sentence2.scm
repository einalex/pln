; This file contains the structures generated by RelEx after parsing
; a sentence. It is useful to do integration tests.
; 
; XXX THIS FILE IS TO BE USED IN ASSOCIATION WITH UNIT TEST CASES ONLY
; DO NOT USE THIS FILE FOR ORDINARY CODE DEVELOPMENT; YOUR CODE WILL
; BE BROKEN IF YOU DO!  XXXX
;

;(S (VP bring (NP it) (PP to (NP me))))
(ReferenceLink (stv 1.0 1.0)
   (WordInstanceNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b")
   (WordNode "bring")
)
(WordInstanceLink (stv 1.0 1.0)
   (WordInstanceNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b")
   (ParseNode "sentence@af8083b4-d1bd-40a1-8f91-95c863f74582_parse_0")
)
(ReferenceLink (stv 1.0 1.0)
   (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
   (WordNode "it")
)
(WordInstanceLink (stv 1.0 1.0)
   (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
   (ParseNode "sentence@af8083b4-d1bd-40a1-8f91-95c863f74582_parse_0")
)
(ReferenceLink (stv 1.0 1.0)
   (WordInstanceNode "to@9e5334cf-d7df-48c8-ac46-cc4afd42402c")
   (WordNode "to")
)
(WordInstanceLink (stv 1.0 1.0)
   (WordInstanceNode "to@9e5334cf-d7df-48c8-ac46-cc4afd42402c")
   (ParseNode "sentence@af8083b4-d1bd-40a1-8f91-95c863f74582_parse_0")
)
(ReferenceLink (stv 1.0 1.0)
   (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
   (WordNode "me")
)
(WordInstanceLink (stv 1.0 1.0)
   (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
   (ParseNode "sentence@af8083b4-d1bd-40a1-8f91-95c863f74582_parse_0")
)
(ReferenceLink (stv 1.0 1.0)
   (ParseNode "sentence@af8083b4-d1bd-40a1-8f91-95c863f74582_parse_0")
   (ListLink
      (WordInstanceNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b")
      (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
      (WordInstanceNode "to@9e5334cf-d7df-48c8-ac46-cc4afd42402c")
      (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
   )
)
(ParseLink (stv 1.0 1.0)
   (ParseNode "sentence@af8083b4-d1bd-40a1-8f91-95c863f74582_parse_0" (stv 1.0 0.9417))
   (SentenceNode "sentence@af8083b4-d1bd-40a1-8f91-95c863f74582")
)
(LemmaLink (stv 1.0 1.0)
   (WordInstanceNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b")
   (WordNode "bring")
)
(LemmaLink (stv 1.0 1.0)
   (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
   (WordNode "it")
)
(LemmaLink (stv 1.0 1.0)
   (WordInstanceNode "to@9e5334cf-d7df-48c8-ac46-cc4afd42402c")
   (WordNode "to")
)
(LemmaLink (stv 1.0 1.0)
   (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
   (WordNode "me")
)
; to (<<bring>>, <<me>>) 
(EvaluationLink (stv 1.0 1.0)
   (DefinedLinguisticRelationshipNode "to")
   (ListLink
      (WordInstanceNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b")
      (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
   )
)
; _obj (<<bring>>, <<it>>) 
(EvaluationLink (stv 1.0 1.0)
   (DefinedLinguisticRelationshipNode "_obj")
   (ListLink
      (WordInstanceNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b")
      (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
   )
)
; tense (bring, imperative)
(InheritanceLink (stv 1.0 1.0)
   (WordInstanceNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b")
   (DefinedLinguisticConceptNode "imperative")
)
; inflection-TAG (bring, .v)
(InheritanceLink (stv 1.0 1.0)
   (WordInstanceNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b")
   (DefinedLinguisticConceptNode ".v")
)
; pos (bring, verb)
(PartOfSpeechLink (stv 1.0 1.0)
   (WordInstanceNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b")
   (DefinedLinguisticConceptNode "verb")
)
; DEFINITE-FLAG (me, T)
(InheritanceLink (stv 1.0 1.0)
   (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
   (DefinedLinguisticConceptNode "definite")
)
; gender (me, person)
(InheritanceLink (stv 1.0 1.0)
   (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
   (DefinedLinguisticConceptNode "person")
)
; PRONOUN-FLAG (me, T)
(InheritanceLink (stv 1.0 1.0)
   (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
   (DefinedLinguisticConceptNode "pronoun")
)
; pos (me, noun)
(PartOfSpeechLink (stv 1.0 1.0)
   (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
   (DefinedLinguisticConceptNode "noun")
)
; noun_number (me, singular)
(InheritanceLink (stv 1.0 1.0)
   (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
   (DefinedLinguisticConceptNode "singular")
)
; inflection-TAG (to, .r)
(InheritanceLink (stv 1.0 1.0)
   (WordInstanceNode "to@9e5334cf-d7df-48c8-ac46-cc4afd42402c")
   (DefinedLinguisticConceptNode ".r")
)
; pos (to, prep)
(PartOfSpeechLink (stv 1.0 1.0)
   (WordInstanceNode "to@9e5334cf-d7df-48c8-ac46-cc4afd42402c")
   (DefinedLinguisticConceptNode "prep")
)
; DEFINITE-FLAG (it, T)
(InheritanceLink (stv 1.0 1.0)
   (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
   (DefinedLinguisticConceptNode "definite")
)
; gender (it, neuter)
(InheritanceLink (stv 1.0 1.0)
   (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
   (DefinedLinguisticConceptNode "neuter")
)
; PRONOUN-FLAG (it, T)
(InheritanceLink (stv 1.0 1.0)
   (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
   (DefinedLinguisticConceptNode "pronoun")
)
; pos (it, noun)
(PartOfSpeechLink (stv 1.0 1.0)
   (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
   (DefinedLinguisticConceptNode "noun")
)
; Transitive_action:Patient(bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b,it@739ecabe-3368-448c-88c3-7edf7851c408)
; Bringing:Agent(bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b,you)
; Bringing:Beneficiary(bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b,me@30354096-2dbb-42b3-93af-f4d294ae4a25)
; Bringing:Theme(bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b,it@739ecabe-3368-448c-88c3-7edf7851c408)
; Transitive_action:Place(bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b,me@30354096-2dbb-42b3-93af-f4d294ae4a25)
; Request:Addressee(bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b,you)
; Request:Message(bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b,bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b)
; Transitive_action:Agent(bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b,you)
; New Frame Format Output

(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing")
   (DefinedFrameNode "#Bringing")
)
(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing_Agent")
   (DefinedFrameElementNode "#Bringing:Agent")
)
(FrameElementLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing")
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing_Agent")
)
(EvaluationLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing_Agent")
   (ConceptNode "#you")
)
(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing_Beneficiary")
   (DefinedFrameElementNode "#Bringing:Beneficiary")
)
(FrameElementLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing")
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing_Beneficiary")
)
(EvaluationLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing_Beneficiary")
   (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
)
(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing_Theme")
   (DefinedFrameElementNode "#Bringing:Theme")
)
(FrameElementLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing")
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing_Theme")
)
(EvaluationLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Bringing_Theme")
   (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
)
(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Request")
   (DefinedFrameNode "#Request")
)
(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Request_Addressee")
   (DefinedFrameElementNode "#Request:Addressee")
)
(FrameElementLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Request")
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Request_Addressee")
)
(EvaluationLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Request_Addressee")
   (ConceptNode "#you")
)
(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Request_Message")
   (DefinedFrameElementNode "#Request:Message")
)
(FrameElementLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Request")
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Request_Message")
)
(EvaluationLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Request_Message")
   (WordInstanceNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b")
)
(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action")
   (DefinedFrameNode "#Transitive_action")
)
(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action_Patient")
   (DefinedFrameElementNode "#Transitive_action:Patient")
)
(FrameElementLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action")
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action_Patient")
)
(EvaluationLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action_Patient")
   (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408")
)
(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action_Place")
   (DefinedFrameElementNode "#Transitive_action:Place")
)
(FrameElementLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action")
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action_Place")
)
(EvaluationLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action_Place")
   (WordInstanceNode "me@30354096-2dbb-42b3-93af-f4d294ae4a25")
)
(InheritanceLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action_Agent")
   (DefinedFrameElementNode "#Transitive_action:Agent")
)
(FrameElementLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action")
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action_Agent")
)
(EvaluationLink (stv 1 1)
   (PredicateNode "bring@43ff99ce-9f2e-4e8f-a344-f8573e14954b_Transitive_action_Agent")
   (ConceptNode "#you")
)
; END of New Frame Format Output

; ante(it, ball)
(EvaluationLink (stv 1 0.5)
   (ConceptNode "anaphoric reference")
   (ListLink 
      (WordInstanceNode "it@739ecabe-3368-448c-88c3-7edf7851c408" )
      (WordInstanceNode "ball@2227209d-89f8-444f-ab90-d749bbc71eda" )
   )
)

(ListLink  (stv 1.0 1.0)
   (AnchorNode "# New Parsed Sentence")
   (SentenceNode "sentence@af8083b4-d1bd-40a1-8f91-95c863f74582")
)
; END OF SENTENCE
