bibtex
swaBibTexReferenceKey

	| authorPart yearPart titlePart titleParts |
	
	authorPart := (self ? #authors) 
		ifNil: ['xxx'] 
		ifNotNil: [:authors | 
			(authors isString or: [authors isEmpty] or: [authors first isCollection and: [authors first isEmpty]]) ifTrue: ['xxx'] ifFalse: [
				authors first isString
					ifTrue: [(authors first findTokens: ' ') last] 
					ifFalse: [authors first lastName]]].
	yearPart := (self ? #publicationDate) ifNil: ['xxxx'] ifNotNil: [:date | date year asString].
	titleParts := (self title asTitleCase findTokens: ' ') collect: [:word | word first] thenSelect: [:character | character isUppercase].
	titlePart := (titleParts first: (titleParts size min: 3)) join.
	
	^ (authorPart , yearPart , titlePart) reject: [:c | c isAscii not]