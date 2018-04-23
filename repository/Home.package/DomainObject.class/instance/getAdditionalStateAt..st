additional-state
getAdditionalStateAt: selector

	^ additionalState at: selector asSymbol ifAbsent: [^ NotFound signal: selector]