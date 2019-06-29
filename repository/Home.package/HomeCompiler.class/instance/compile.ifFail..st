public access
compile: aCue ifFail: failBlock 

	| newCode |
	newCode := self transformCode: aCue sourceStream contents asString class: aCue getClass.
	
	^ super compile: (CompilationCue
						source: newCode
						class: aCue getClass
						environment: aCue environment
						requestor: aCue requestor)
			ifFail: failBlock