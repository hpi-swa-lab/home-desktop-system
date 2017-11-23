additional-state
removeAdditionalStateAt: selector

	(soupadditionalState at: self ifAbsent: [^ true])
		removeKey: selector asSymbol.
	self changed.
	^ self