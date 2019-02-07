tests
testCreatedAtIsPreserved

	| oldCreatedAt |
	oldCreatedAt := object createdAt.
	object store.
	self assert: object createdAt == oldCreatedAt.