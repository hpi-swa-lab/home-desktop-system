read/write
setValue: anObject on: aPersistentObject

	(self targetCardinality = Float infinity)
		ifTrue: [
			(aPersistentObject hasAdditionalState: self identifier)
				ifFalse: [ | collectionClass |
					collectionClass := self isOrdered ifTrue: [OrderedCollection] ifFalse: [Set].
					aPersistentObject setAdditionalStateAt: self identifier asSymbol put: collectionClass new].
			(aPersistentObject getAdditionalStateAt: self identifier) add: anObject. ].
		
	(self targetCardinality = 1)
		ifTrue: [	aPersistentObject setAdditionalStateAt: self identifier asSymbol put: anObject]