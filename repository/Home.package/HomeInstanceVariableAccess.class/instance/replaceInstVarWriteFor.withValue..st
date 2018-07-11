rewriting
replaceInstVarWriteFor: aVariableName withValue: aValueExpression

	^ '(self setInstVarAndSendUpdateFor: (#{1}) theValue: ({2}))' format: {aVariableName asString . aValueExpression}