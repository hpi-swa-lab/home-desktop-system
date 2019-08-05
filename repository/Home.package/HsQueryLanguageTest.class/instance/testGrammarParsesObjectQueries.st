tests
testGrammarParsesObjectQueries

	startRule := #ObjectQuery.
	self
		shouldParseAll: #(
			'[[Smalltalk at: #Frodo]]'
			'[[#male]]'
			'[[true]]'
			'[[42]]'
			'[[]]'
			'[["]"]]'
			'[[]]'
			'[[tmp := 2]]'
			'[[| tmp | tmp := 2. tmp]]'
			);
		shouldntParseAny: #(
			'[[syntax:error]]'
			'[self := true]'
			'[true]'
			'[]'
			)