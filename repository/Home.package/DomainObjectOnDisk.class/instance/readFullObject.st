private
readFullObject

	| object |
	DomainObject objectStorageFolder readOnlyFileNamed: uuidOfObject asString do: [:file |
		 object := STON fromStream: file].
	
	object ensureBeingPersisted.
	
	^ object