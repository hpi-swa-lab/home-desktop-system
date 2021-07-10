tests
testAdditionalStateIsPreserved

	| someValue |
	someValue := Object new.
	object testAttribute: someValue.
	object storeAway.
	self deny: object testAttribute == someValue description: 'arbitrary objects are copied during serialization'