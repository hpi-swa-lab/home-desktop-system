as yet unclassified
Statement: aNode withOptionalAssignmentOperation: optionalAssignmentOperation withExpression: Expression 

	| assignedVariableName |
	
	(optionalAssignmentOperation isNil 	or: [optionalAssignmentOperation interval contents isEmpty])
			ifTrue: [^ self value: Expression].
	
	assignedVariableName := self value: optionalAssignmentOperation.

	^ (self variablesToBeReplaced includes: assignedVariableName asSymbol)
		ifTrue: [ self replaceInstVarWriteFor: assignedVariableName withValue: (self value: Expression) ]
		ifFalse: [ assignedVariableName , ' := ' , (self value: Expression)]