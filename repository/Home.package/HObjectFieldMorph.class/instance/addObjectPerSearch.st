objectItem-creation
addObjectPerSearch

	| chosenObject |
	chosenObject := HObjectItem new chooseObject.
	chosenObject ifNil: [^ self].
	self addDomainObjectBack: chosenObject