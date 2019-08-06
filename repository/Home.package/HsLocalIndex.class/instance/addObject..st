adding / removing
addObject: anObject

	anObject searchWords do: [:term |
		self post: anObject at: term]