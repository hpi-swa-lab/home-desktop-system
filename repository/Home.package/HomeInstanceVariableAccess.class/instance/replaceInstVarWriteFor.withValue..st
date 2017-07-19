as yet unclassified
replaceInstVarWriteFor: aVariableName withValue: aValueExpression

	^ '(self setInstVarAndSendUpdateFor: (#',aVariableName asString,') theValue: (' , aValueExpression , '))'