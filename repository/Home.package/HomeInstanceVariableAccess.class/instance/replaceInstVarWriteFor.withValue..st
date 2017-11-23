rewriting
replaceInstVarWriteFor: aVariableName withValue: aValueExpression

	^ '(self setInstVarAndSendUpdateFor: (#',aVariableName asString,') theValue: (' , aValueExpression , '))'