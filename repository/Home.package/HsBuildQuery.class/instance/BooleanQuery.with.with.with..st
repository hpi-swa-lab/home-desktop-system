actions
BooleanQuery: thisNode with: firstClause with: conjunctions with: moreClauseNodes

	| clauses |
	clauses := Array streamContents: [:stream |
		stream nextPutAll: (self value: firstClause).
		moreClauseNodes children withIndexDo: [:clauseNode :i |
			stream nextPutAll: (self value: clauseNode)]].
	^ HsBooleanQuery clauses: clauses