as yet unclassified
cachedInformationOn: aUriString
	
	^ (self class Cache ifNil: [cache := Dictionary new])
		at: aUriString asString ifAbsentPut: [ | triples  |
			triples := self retrieveAllInformationOn: aUriString.
			(triples groupBy: [:t | t key]) collect: [:g | g collect: [:t | t value]]]