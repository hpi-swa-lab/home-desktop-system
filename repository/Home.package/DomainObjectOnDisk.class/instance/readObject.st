as yet unclassified
readObject

	| storedData newObject |
	DomainObject objectStorageFolder readOnlyFileNamed: uuidOfObject asString do: [:file |
		storedData := Json readFrom: file].
	
	newObject := (Smalltalk at: (storedData at: #'_class') asSymbol) basicNew initialize; yourself.
	storedData removeKey: #'_class'.
	newObject setUuid: uuidOfObject.
	storedData keys do: [:key |
		self updateFieldNamed: key with: (storedData at: key) on: newObject].
	
	^ newObject