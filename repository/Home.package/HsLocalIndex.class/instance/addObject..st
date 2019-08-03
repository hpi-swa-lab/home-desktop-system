adding / removing
addObject: anObject

	anObject searchTerms do: [:term |
		self post: anObject at: term]