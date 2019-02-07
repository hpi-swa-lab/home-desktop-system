tests
testAllFieldsArePreserved

	| someValue |
	someValue := Object new.
	object someField: someValue.
	object store.
	self assert: object someField == someValue.