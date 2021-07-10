additional-state
getAdditionalStateAt: selector

	^ self getAdditionalStateAt: selector ifAbsent: [NotFound signal: selector]