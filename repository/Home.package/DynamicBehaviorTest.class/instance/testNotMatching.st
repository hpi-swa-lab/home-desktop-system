as yet unclassified
testNotMatching
	|obj|
	obj := DomainObject new.
	obj firstName: 'Patrick'.
	self assert: (obj isOfType: #TestPersonType) not.
	self assert: (obj respondsTo: #fullName) not.
	self should: [obj fullName] raise: MessageNotUnderstood.