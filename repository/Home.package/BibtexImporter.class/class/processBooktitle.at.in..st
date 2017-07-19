as yet unclassified
processBooktitle: bookTitle at: key in: properties

	| book |
	book := CreativeWork resolve: bookTitle.
	
	"Problem: This might be Proceedings which might require special attributes, e.g. a conference (depends on type of entry)"

	^ #partOf -> book