testing
fits: obj
	^ (self firstNameAttribute: obj) notNil and: [(self lastNameAttribute: obj) notNil]