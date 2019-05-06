as yet unclassified
testFullNameAlternative
	|obj|
	obj := DomainObject new.
	obj prenom: 'Patrick'.
	obj lastName: 'Rein'.
	self assert: (obj isOfType: #TestPersonType).
	