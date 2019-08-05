tests
testGrammarParsesWordQueries

	startRule := #WordQuery.
	self
		shouldParseAll: #(
			'Frodo'
			'42'
			'Fr0d0'
			'xXFrodo420Xx'
			);
		shouldntParseAny: #(
			'Fro,do'
			'name:Frodo'
			'Frodo Baggins'
			'+Frodo'
			''
			)