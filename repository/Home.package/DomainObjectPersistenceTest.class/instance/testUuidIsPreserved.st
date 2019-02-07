tests
testUuidIsPreserved

	| oldUuid |
	oldUuid := object uuid.
	object store.
	self assert: object uuid = oldUuid.