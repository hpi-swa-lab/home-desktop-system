removing
remove: oldObject

	oldObject removeDependent: self syncGateway.
	^ super remove: oldObject