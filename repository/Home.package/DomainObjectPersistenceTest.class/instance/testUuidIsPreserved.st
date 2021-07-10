tests
testUuidIsPreserved

	| oldUuid |
	oldUuid := object uuid.
	object storeAway.
	self assert: object uuid = oldUuid.