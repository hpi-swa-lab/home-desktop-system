code transformation
transformCode: aString class: aClass

	| rewriter |
	rewriter := (OhmSmalltalk synthesizedAttribute: HomeInstanceVariableAccess new)
		variablesToBeReplaced: ((aClass instVarNames) collect: [:s | s asSymbol]);
		yourself.
	
	^ rewriter value: (OhmSmalltalk match: aString startingFrom: #MethodDeclaration)