accessing
number: anObject

	((GardenPot allInstances collect: #number) includes: anObject) 
		ifTrue: [Exception signal: 'The number must be unique'].
	number := anObject.
	