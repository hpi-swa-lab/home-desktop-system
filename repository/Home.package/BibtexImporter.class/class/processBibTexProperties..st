as yet unclassified
processBibTexProperties: properties

	| processingDispatch |
	processingDispatch := Dictionary newFrom: {
		#author -> #processAuthors:at:in: .
		#booktitle -> #processBooktitle:at:in: .
		#pages -> #processPageRange:at:in: .
		#url -> #processUrl:at:in: .
		#keywords -> #processKeywords:at:in: .
		#year -> #processDate:at:in: .
		#month -> #processDate:at:in: .
		#day -> #processDate:at:in: .
	}.
	
	^ properties associations collect: [:p |
		(processingDispatch includesKey: p key)
			ifTrue: [	self perform: (processingDispatch at: p key) 
							withArguments: {p value . p key . properties}]
			ifFalse: [p]]