public access
compile: textOrStream in: aClass environment: anEnvironment notifying: aRequestor ifFail: failBlock 
		
	| newCode rewriter |
	rewriter := (OhmSmalltalk synthesizedAttribute: HomeInstanceVariableAccess new)
		variablesToBeReplaced: ((aClass instVarNames) collect: [:s | s asSymbol]);
		yourself.
	
	newCode := rewriter value: (OhmSmalltalk match: textOrStream asString startingFrom: #MethodDeclaration).
	
	^ super compile: textOrStream in: aClass environment: anEnvironment notifying: aRequestor ifFail: failBlock 