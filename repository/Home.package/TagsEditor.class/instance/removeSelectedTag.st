as yet unclassified
removeSelectedTag

	self instanceToEdit tags: ((self instanceToEdit ?? #tags) copyWithout: (self listOfTags at: self selectedTagIndex)).
	self selectedTagIndex: nil.
	self changed: #listOfTags.
	self changed: #selectedTagIndex.
	