storing
objectStorageRepresentation: anObject givenPool: aPool

	anObject isExtended ifTrue: [
		^ anObject uuid asString].
	
	(#(isNumber isString isBoolean isNil) anySatisfy: [:selector | anObject perform: selector ]) ifTrue: [
		^ anObject].
	
	^ (aPool at: anObject ifAbsent: [self error: 'Object not in pool']) asString