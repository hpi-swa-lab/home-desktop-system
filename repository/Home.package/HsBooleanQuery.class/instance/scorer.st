querying
scorer

	self isAny ifTrue: [^ self anyScorer].
	self isAll ifTrue: [^ self allScorer].
	self isNone ifTrue: [^ self noneScorer].
	^ self genericScorer