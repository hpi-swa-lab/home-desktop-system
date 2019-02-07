resolving
allInformationOn: aUriString 

	^ (self cachedInformationOn: aUriString) associations collect: [:association | 
		(self class normalizedProperties keyAtValue: association key ifAbsent: [association key]) 
			-> (association value size = 1 ifTrue: [association value first] ifFalse: [association value])]
	