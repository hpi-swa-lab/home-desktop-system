as yet unclassified
fits: testDomainObject
	| attribute |
	attribute := (ToDoLike instance doneAttribute: testDomainObject).
	^ attribute notNil and: [attribute value isBoolean] and: [attribute value].