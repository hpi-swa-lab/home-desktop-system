*Home-Behavior
basicRespondsTo: aSelector
	"like #respondsTo:, but without taking extra type behavior into account"
	^ (super respondsTo: aSelector) or: [self has: aSelector]