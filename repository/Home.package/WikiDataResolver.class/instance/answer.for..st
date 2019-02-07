resolving
answer: aMessage for: aUriString

	| keys selectors values |
	selectors := {aMessage selector}.
	self class normalizedProperties at: aMessage selector ifPresent: [:s | 
		selectors := selectors , {s}].
	keys := selectors collect: [:s | (self cachedInformationOn: aUriString) keys 
				detect: [:k | k endsWith: s]
				ifNone: [nil]].
	keys := keys reject: [:key | key isNil].
	values := keys gather: [:key | (self cachedInformationOn: aUriString) at: key].
	^ values select: [:v | (v isKindOf: NTLiteral) 
		ifTrue: [v languageTag = 'en']
		ifFalse: [true]]