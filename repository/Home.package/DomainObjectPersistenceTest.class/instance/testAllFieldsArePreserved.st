tests
testAllFieldsArePreserved

	| someValue |
	someValue := Object new.
	object someField: someValue.
	object storeAway.
	self deny: object someField == someValue description: 'arbitrary objects are copied during serialization'