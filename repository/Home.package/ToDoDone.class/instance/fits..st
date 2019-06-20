as yet unclassified
fits: testDomainObject
	| doneAttribute |
	doneAttribute := (ToDoLike instance doneAttribute: testDomainObject).
	^  doneAttribute notNil and: [doneAttribute value].