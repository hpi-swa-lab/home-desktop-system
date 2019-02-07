tests
testAdditionalStateIsPreserved

	| someValue |
	someValue := Object new.
	object testAttribute: someValue.
	object store.
	self assert: object testAttribute == someValue.