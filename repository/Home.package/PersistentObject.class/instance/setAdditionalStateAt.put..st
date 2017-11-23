additional-state
setAdditionalStateAt: selector put: value

	(soupadditionalState at: self ifAbsent: [soupadditionalState at: self put: IdentityDictionary new])
		at: selector asSymbol put: value.
	self changed.
	^ self