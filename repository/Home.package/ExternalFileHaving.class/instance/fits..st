testing
fits: testDomainObject
	|file|
	file := self fileAttribute: testDomainObject.
	^ file notNil and: [file value notNil] and: [file value isString].