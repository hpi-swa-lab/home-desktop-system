additional-state
allAdditionalStateValues

	^ (soupadditionalState at: self ifAbsent: [^ #()]) values