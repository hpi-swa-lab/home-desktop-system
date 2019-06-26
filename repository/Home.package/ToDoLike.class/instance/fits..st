as yet unclassified
fits: testDomainObject
	| attribute |
	attribute := (self doneAttribute: testDomainObject).
	^ attribute notNil and: [attribute value isBoolean].