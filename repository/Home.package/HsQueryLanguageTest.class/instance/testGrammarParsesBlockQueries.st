tests
testGrammarParsesBlockQueries

	startRule := #BlockQuery.
	self
		shouldParseAll: #(
			'[self canUnderstand: #name]'
			'[self notNil]'
			'[true]'
			'[42]'
			'[]'
			'["]"]'
			);
		shouldntParseAny: #(
			'[self: self self]'
			'[self := true]'
			'[[]'
			)