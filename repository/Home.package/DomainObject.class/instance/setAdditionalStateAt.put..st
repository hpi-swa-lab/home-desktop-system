additional-state
setAdditionalStateAt: selector put: value

	additionalState at: selector asSymbol put: value.
	self changed.
	^ self