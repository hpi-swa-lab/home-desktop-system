actions
becomeTheTarget

	self objectsToMerge do: [:obj |
		obj becomeForward: self target].
	
	self changed: #listOfObjectsToBeMerged