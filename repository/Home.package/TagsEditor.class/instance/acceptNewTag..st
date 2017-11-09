user interface
acceptNewTag: aString

	self instanceToEdit tags: ((self instanceToEdit ?? #tags) copyWith: aString asString asSymbol).
	self changed: #listOfTags.
	self changed: #newTag.