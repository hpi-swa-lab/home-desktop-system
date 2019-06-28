as yet unclassified
mainNameOf: object
	^ (self doneAttribute: object) value ifTrue: ['done'] ifFalse: ['todo']