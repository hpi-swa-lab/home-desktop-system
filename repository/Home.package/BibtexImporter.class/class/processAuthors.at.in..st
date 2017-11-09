as yet unclassified
processAuthors: authorsString at: key in: properties

	| parseResult names |
	parseResult := OhmBibtexAuthors match: authorsString startingFrom: #Authors.
	
	parseResult failed ifTrue: [self error].
	
	names := (OhmBibtexAuthors synthesizedAttribute: BibtexAuthorNames new) 
				value: parseResult.
	
	^ #authors -> (names collect: [:n | Person resolve: (n joinSeparatedBy: ' ') automaticAccept: true])