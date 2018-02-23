modifying
renameEntry: entryName to: newEntryName

	| entry |
	entry := self at: entryName.
	self removeKey: entryName.
	^ self at: newEntryName put: entry