as yet unclassified
doesNotUnderstand: aMessage

	^ (SurrogateEquivalenceClass equivalenceClassFor: self) gather: [:s | Resolver retrieveAnswerFor: aMessage for: s uri]