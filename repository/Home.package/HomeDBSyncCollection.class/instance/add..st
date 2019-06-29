as yet unclassified
add: newObject
	
	newObject addDependent: self syncGateway.
	^ super add: newObject
	