as yet unclassified
isToDo

	self flag: #TODO. "This is a general inversion of the lookup and should not require a separate method for each and every method --pre"

	^ (self has: #isToDo) and: [self getAdditionalStateAt: #isToDo] 