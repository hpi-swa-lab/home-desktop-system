actions
BooleanQuery: thisNode with: firstClause with: conjunctions with: moreClauseNodes

	| clauses |
	clauses := Array streamContents: [:stream |
		stream nextPut: (self value: firstClause).
		moreClauseNodes children withIndexDo: [:clauseNode :i |
			stream nextPut: (self value: clauseNode)]].
	^ HsBooleanQuery clauses: clauses