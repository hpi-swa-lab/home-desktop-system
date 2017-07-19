as yet unclassified
search: aString

	| normalizedString terms |
	normalizedString := aString asLowercase.
	terms := normalizedString findTokens: ' '.
	^ (self select: [:o | 
			terms allSatisfy: [:t |
				(o class allInstVarNames 
							collect: [:varName | (o instVarNamed: varName) asString asLowercase ])
								anySatisfy: [:value | value includesSubstring: t]]]) asArray