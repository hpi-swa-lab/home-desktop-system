tests
testGrammarParsesBooleanQueries

	startRule := #BooleanQuery.
	self
		shouldParseAll: #(
			'Frodo'
			'Frodo Baggins'
			'+Frodo'
			'-Frodo Baggins'
			'#Frodo Baggins'
			'NOT Frodo Baggins'
			'! Frodo Baggins'
			'+(Frodo #Bilbo) Baggins'
			'(((Frodo Baggins)))'
			);
		shouldntParseAny: #(
			'++Frodo Baggins'
			''
			)