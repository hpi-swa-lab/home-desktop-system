as yet unclassified
getAdditionalStateAt: selector

	^ (soupadditionalState at: self ifAbsent: [^ NotFound signal: selector])
		at: selector asSymbol ifAbsent: [^ NotFound signal: selector]