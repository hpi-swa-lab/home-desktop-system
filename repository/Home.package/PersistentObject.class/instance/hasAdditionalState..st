as yet unclassified
hasAdditionalState: selector

	^ (soupadditionalState at: self ifAbsent: [^ false]) includesKey: selector