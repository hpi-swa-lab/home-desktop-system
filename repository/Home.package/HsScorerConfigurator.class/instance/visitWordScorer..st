visiting
visitWordScorer: aScorer

	self index ifNotNil: [:index |
		aScorer setIndex: index]