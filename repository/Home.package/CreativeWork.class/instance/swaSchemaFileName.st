accessing
swaSchemaFileName

	| authorsPart yearPart titlePart |
 	authorsPart := (self ?? #authors)
		ifEmpty: ['xxx']
		ifNotEmptyDo: [:authors | (authors collect: [:a | a lastName asString]) joinSeparatedBy: ''].
		
	yearPart := (self ? #year)
		ifNil: [(self ? #publicationDate)
				ifNil: ['xxxx']
				ifNotNilDo: [:date | date year asString]]
		ifNotNilDo: [:year | year asString].
		
	titlePart := (((self title copyWithoutAll: ',.:!?-_/') findTokens: ' ') collect: [:t | t withBlanksTrimmed capitalized]) 				joinSeparatedBy: ''.
					
	^ {authorsPart . yearPart . titlePart} joinSeparatedBy: '_'