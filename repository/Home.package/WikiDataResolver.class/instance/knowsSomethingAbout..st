as yet unclassified
knowsSomethingAbout: anUri 
	
	anUri isOpaque ifTrue: [^ false].
	^ anUri authority host = 'www.wikidata.org' and: [anUri schemeSpecificPart beginsWith: '/entity']