adapter methods
asArray
	
	^ self fieldA
		ifNil: [{}]
		ifNotNil: [{self fieldA}]
