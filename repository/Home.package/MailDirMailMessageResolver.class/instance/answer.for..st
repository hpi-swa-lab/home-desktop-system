as yet unclassified
answer: aMessage for: anUri

	| idToFind |
	idToFind := '<' , anUri allButScheme , '>'. "mail message ids have this syntax"
	^ MDMail allInstances 
		select: [:mail | mail messageId = idToFind]
		thenCollect: [:mail | mail perform: aMessage selector withArguments: aMessage arguments]