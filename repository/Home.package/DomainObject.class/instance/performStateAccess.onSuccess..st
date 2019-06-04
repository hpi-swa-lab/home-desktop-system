error handling
performStateAccess: aMessage onSuccess: success
	"interpret the given message as state access (get / set) if possible"
	(aMessage selector isUnary and: [self has: aMessage selector])
		ifTrue: [success value: (self getAdditionalStateAt: aMessage selector)].
	(aMessage selector numArgs = 1)
		ifTrue: [success value: ((HomeRelation for: aMessage selector) setValue: aMessage arguments first on: self)].