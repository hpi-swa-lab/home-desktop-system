private
setIndex: anIndex

	| newMe |
	self fuzziness > 0 ifTrue: [^ self].
	newMe := HsIndexWordScorer new
				value: self value;
				index: anIndex;
				yourself.
	self becomeForward: newMe