as yet unclassified
remove: oldObject

	oldObject removeDependent: self syncGateway.	
	^ self collection remove: oldObject