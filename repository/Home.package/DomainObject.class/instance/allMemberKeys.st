accessing
allMemberKeys
	^ ((self class allInstVarNames asOrderedCollection collect: #asSymbol) intersection: self class allSelectors)
		union: self additionalStateKeys