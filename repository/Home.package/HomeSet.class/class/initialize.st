class initialization
initialize

	Smalltalk 
		at: DomainObject rootName 
		ifAbsent: [Smalltalk at: DomainObject rootName put: self new]