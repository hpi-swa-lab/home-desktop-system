accessing
dtrpReferenceFormat

	| authorsPart |
 	authorsPart := ((self ?? #authors) collect: [:a | a firstName capitalized first asString , '. ' , a lastName asString]) joinSeparatedBy: ', '.

	^ authorsPart , '. ' , self title , '. ' , self dtrpOriginReferencePart, '.' , ((self ? #publicationDate) ifNil: [''] ifNotNil: [:d | ' ' , d year asString])
	