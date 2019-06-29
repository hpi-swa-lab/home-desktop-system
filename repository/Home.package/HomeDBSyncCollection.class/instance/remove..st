as yet unclassified
remove: oldObject

	oldObject removeDependent: self syncGateway.
	^ super remove: oldObject