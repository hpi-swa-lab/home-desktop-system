private
resolve: aMessage

	^ (SurrogateEquivalenceClass equivalenceClassFor: self) gather: [:s | 
		Resolver retrieveAnswerFor: aMessage for: s uri]