soup
initializeStorage

	"This is very dangerous as it wipes out all of your data"
	
	((Smalltalk includesKey: self rootName) and: [(Smalltalk at: self rootName) notNil])
		ifTrue: [UIManager default inform: 'There are stored objects. I will not initialize the global storage']
		ifFalse: [Smalltalk at: self rootName put: HomeSet new.
				Smalltalk at: self rootAdditionalStateName put: IdentityDictionary new ]
	
	