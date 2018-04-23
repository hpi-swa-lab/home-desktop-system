accessing
selectedOriginalIndex: anObject

	selectedOriginalIndex := anObject.
	self updateListOfDuplicates.
	self 
		changed: #selectedOriginalIndex;
		changed: #listOfDuplicates.