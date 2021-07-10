tests
testFullName
	|obj|
	obj := DomainObject new.
	obj firstName: 'Patrick'.
	obj lastName: 'Rein'.
	self assert: (obj isOfType: #TestPersonType).
	self assert: (obj respondsTo: #fullName).
	self assert: obj fullName equals: 'Patrick Rein'.
	obj lastName: 'Star'.
	self assert: obj fullName equals: 'Patrick Star'.
	