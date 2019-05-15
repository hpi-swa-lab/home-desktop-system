tests
testGrammarParsesAttributeValue

	startRule := #AttributeValue.
	self
		shouldParseAll: #(
			'''Patrick Rein'''
			'24'
			'#[1 2 3]'
			'[2 * 3]'
			);
		shouldntParseAny: #(
			'Patrick Rein'
			'Robert Hirschfeld attr: ''Patrick'''
			)