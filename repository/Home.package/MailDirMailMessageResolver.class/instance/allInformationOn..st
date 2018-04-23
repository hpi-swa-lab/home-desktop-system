as yet unclassified
allInformationOn: anUri

	| idToFind |
	idToFind := '<' , anUri allButScheme , '>'. "mail message ids have this syntax"
	^ (MDMail allInstances 
		select: [:mail | mail messageId = idToFind])
		gather: [:mail | mail explorerContents collect: [:wrapper | 
				"Unwrapping the explorer contents item which already is an association"
				wrapper item]]