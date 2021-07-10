read/write
setValue: anObject on: aPersistentObject

	aPersistentObject setAdditionalStateAt: self identifier asSymbol put: anObject.
	self ensureModelIntegrityAfterSetting: anObject on: aPersistentObject.