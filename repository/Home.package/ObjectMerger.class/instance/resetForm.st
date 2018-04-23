actions
resetForm

	self target: nil.
	self objectsToMerge: OrderedCollection new.
	
	self 
		changed: #targetAsList;
		changed: #listOfObjectsToBeMerged