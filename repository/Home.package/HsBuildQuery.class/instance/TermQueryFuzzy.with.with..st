actions
TermQueryFuzzy: thisNode with: termNode with: fuzzinessNode

	| term |
	term := self value: termNode.
	(self value: fuzzinessNode)
		ifNil: [term setDefaultFuzziness]
		ifNotNil: [:fuzziness | term fuzziness: fuzziness].
	^ term