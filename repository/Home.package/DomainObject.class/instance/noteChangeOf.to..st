private
noteChangeOf: anInstVarName to: aValue

	currentInStorage := false.
	self changed.
	self changed: anInstVarName with: aValue.
	
	self updateLastChanged.
	
	self storeFull.
	