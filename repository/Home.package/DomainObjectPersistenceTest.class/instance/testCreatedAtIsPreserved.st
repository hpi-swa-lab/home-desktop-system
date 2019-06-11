tests
testCreatedAtIsPreserved

	| oldCreatedAt |
	oldCreatedAt := object createdAt.
	object storeFull.
	self assert: object createdAt = oldCreatedAt.