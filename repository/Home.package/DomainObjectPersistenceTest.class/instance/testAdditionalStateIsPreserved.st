tests
testAdditionalStateIsPreserved

	| someValue |
	someValue := Object new.
	object testAttribute: someValue.
	object storeFull.
	self deny: object testAttribute == someValue description: 'arbitrary objects are copied during serialization'