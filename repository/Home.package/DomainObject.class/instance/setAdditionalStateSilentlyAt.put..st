additional-state
setAdditionalStateSilentlyAt: selector put: value

	additionalState at: selector asSymbol put: value.
	^ value