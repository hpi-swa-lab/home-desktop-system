tests
testGrammarParsesSelectionQueries

	startRule := #SelectionQuery.
	self
		shouldParseAll: #(
			'[self canUnderstand: #name]'
			'[self notNil]'
			'[true]'
			'[42]'
			'[]'
			'["]"]'
			'[[]]'
			'[tmp := 2]'
			'[| tmp | tmp := 2. tmp notNil]'
			);
		shouldntParseAny: #(
			'[self: self self]'
			'[self := true]'
			'[[]'
			)