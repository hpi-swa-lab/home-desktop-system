as yet unclassified
compile: code in: class notifying: requestor ifFail: failBlock
		
	| newCode rewriter |
	rewriter := (OhmSmalltalk synthesizedAttribute: HomeInstanceVariableAccess new)
		variablesToBeReplaced: ((class instVarNames) collect: [:s | s asSymbol]);
		yourself.
	
	newCode := rewriter value: (OhmSmalltalk match: code asString startingFrom: #MethodDeclaration).
	
	^ super compile: newCode in: class notifying: requestor ifFail: failBlock