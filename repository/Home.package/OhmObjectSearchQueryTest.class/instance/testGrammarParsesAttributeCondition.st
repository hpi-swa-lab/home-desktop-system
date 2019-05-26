tests
testGrammarParsesAttributeCondition

	startRule := #AttributeCondition.
	self
		shouldParseAll: #(
			'name: ''Patrick Rein'''
			'name=''Patrick Rein'''
			'name==''Patrick Rein'''
			'name: ''date:'''
			'age:3'
			);
		shouldntParseAny: #(
			'name: 4 date: 3'
			)