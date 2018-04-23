as yet unclassified
retrieveAnswerFor: aMessage for: aUri

	^ self resolvers 
		select: [:resolver | resolver knowsSomethingAbout: aUri regarding: aMessage ]
		thenCollect: [:resolver | resolver answer: aMessage for: aUri]