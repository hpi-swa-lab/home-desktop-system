as yet unclassified
add: newObject
	
	newObject addDependent: self syncGateway.
	^ self collection add: newObject
	