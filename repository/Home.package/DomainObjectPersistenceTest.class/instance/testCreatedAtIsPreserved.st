tests
testCreatedAtIsPreserved

	| oldCreatedAt |
	oldCreatedAt := object createdAt.
	object storeAway.
	self assert: object createdAt = oldCreatedAt.