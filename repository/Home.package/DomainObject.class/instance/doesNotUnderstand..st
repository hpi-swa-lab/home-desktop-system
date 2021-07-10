error handling
doesNotUnderstand: aMessage
	"delegate unknown messages to additional state or Behavior"
	| success |
	success := [:val | ^ val].
	
	self perforperformBehavior: aMessage onSuccess: success.
	self performStateAccess: aMessage onSuccess: success.
	
	^ super doesNotUnderstand: aMessage