additional-state
removeAdditionalStateAt: selector

	additionalState removeKey: selector asSymbol.
	self changed.
	^ self