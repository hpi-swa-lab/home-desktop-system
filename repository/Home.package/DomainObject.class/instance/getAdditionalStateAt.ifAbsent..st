additional-state
getAdditionalStateAt: selector ifAbsent: exceptionBlock

	^ additionalState at: selector asSymbol ifAbsent: exceptionBlock