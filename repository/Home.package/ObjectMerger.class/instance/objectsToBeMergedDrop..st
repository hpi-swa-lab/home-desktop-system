event-handling
objectsToBeMergedDrop: anObject

	((self objectsToMerge includes: anObject) not and: [anObject ~= self target]) ifTrue: [
		self objectsToMerge add: anObject].
	self changed: #listOfObjectsToBeMerged