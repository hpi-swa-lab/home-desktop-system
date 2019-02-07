as yet unclassified
retrieveAnswerFor: aMessage for: aUri

	^ (self resolvers 
		select: [:resolver | resolver knowsSomethingAbout: aUri regarding: aMessage ])
		gather: [:resolver | resolver answer: aMessage for: aUri]
		
