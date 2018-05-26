accessing
defaultInitialValue

	^ self defaultInitialization 
		ifNil: [self targetCardinality = self class many
				ifTrue: [OrderedCollection new]
				ifFalse: [nil]]
		ifNotNil: [self defaultInitialization isBehavior
					ifTrue: [self defaultInitialization new]
					ifFalse: [self defaultInitialization value]]