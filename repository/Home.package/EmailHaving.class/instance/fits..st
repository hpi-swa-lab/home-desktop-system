testing
fits: testDomainObject
	|email|
	email := self emailAttribute: testDomainObject.
	^ email notNil and: [email value notNil] and: [email value includes: $@]