storing
storageData: storageData givenPool: objectsPool

	^ storageData collect: [:anObject |
		self objectStorageRepresentation: anObject givenPool: objectsPool]	