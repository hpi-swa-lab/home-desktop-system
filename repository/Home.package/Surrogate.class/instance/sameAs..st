accessing
sameAs: anotherSurrogate

	(anotherSurrogate isKindOf: self class) ifFalse: [^ self error: 'sameAs should only be used with surrogates'].
	
	SurrogateEquivalenceClass makeEquivalentSurrogate: self and: anotherSurrogate.