tests
testGrammarParsesTermQueries

	startRule := #TermQuery.
	self
		shouldParseAll: #(
			'name:Patrick'
			'name: Patrick'
			'name: (Patrick Rein)'
			'name: "Patrick Rein"'
			'name: "Patrick"'
			);
		shouldntParseAny: #(
			'+name: Patrick'
			'name: Patrick Rein'
			'name Patrick'
			'name= Patrick'
			'name: +Patrick'
			)