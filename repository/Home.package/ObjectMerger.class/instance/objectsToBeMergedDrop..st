event-handling
objectsToBeMergedDrop: anObject

	self objectsToMerge add: anObject.
	self changed: #listOfObjectsToBeMerged