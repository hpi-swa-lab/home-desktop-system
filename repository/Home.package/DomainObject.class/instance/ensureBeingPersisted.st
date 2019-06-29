persistence
ensureBeingPersisted

	^ self isPersisted ifFalse: [soup add: self]