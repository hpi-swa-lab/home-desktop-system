sync
storeObject: aObject
	
	^ self database at: (aObject uuid) put: aObject