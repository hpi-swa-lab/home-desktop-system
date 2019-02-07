storing
store

	| storageData objectsPool reversePool|
	storageData := Dictionary new.
	
	self class allInstVarNames do: [:instVarName |
			storageData at: instVarName put: (self instVarNamed: instVarName)].
		self additionalStateSelectors do: [:additionalStateName |
			storageData at: additionalStateName put: (self getAdditionalStateAt: additionalStateName)].
	storageData at: #'_class' put: self class name.
	self internalStateNames do: [:name | storageData removeKey: name].
	
	objectsPool := self stateForObjectPool: storageData.
	storageData := self storageData: storageData givenPool: objectsPool.
	
	self class objectStorageFolder forceNewFileNamed: self uuid asString do: [:file | 
		storageData jsonWriteOn: file].
	
	reversePool := Dictionary newFrom: (objectsPool associations collect: [:a |
		a value -> a key]).
	self becomeForward: (DomainObjectOnDisk for: self withPool: reversePool).