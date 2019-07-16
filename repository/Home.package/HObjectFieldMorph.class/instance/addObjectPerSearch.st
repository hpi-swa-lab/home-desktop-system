as yet unclassified
addObjectPerSearch

	| chosenObject |
	chosenObject := HObjectItem new chooseObject.
	chosenObject ifNil: [^ self].
	self addDomainObjectBack: chosenObject