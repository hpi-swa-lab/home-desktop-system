*Home
search: aString

	| normalizedString terms |
	normalizedString := aString asLowercase.
	terms := normalizedString findTokens: ' '.
	^ (self select: [:o | 
			terms allSatisfy: [:t | | values |
				values := o class allInstVarNames 
					collect: [:varName | (o instVarNamed: varName) asString asLowercase ].
				values := values , (o isExtended 
					ifTrue: [o allAdditionalStateValues collect: [:v | v asString asLowercase]] 
					ifFalse: [#()]).
				values := values , {o className asLowercase}.
				values anySatisfy: [:value | value includesSubstring: t]]]) asArray