additional-state
hasAdditionalState: selector

	^ (soupadditionalState at: self ifAbsent: [^ false]) includesKey: selector