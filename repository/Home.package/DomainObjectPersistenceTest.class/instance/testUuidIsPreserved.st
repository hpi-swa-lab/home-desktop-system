tests
testUuidIsPreserved

	| oldUuid |
	oldUuid := object uuid.
	object storeFull.
	self assert: object uuid = oldUuid.