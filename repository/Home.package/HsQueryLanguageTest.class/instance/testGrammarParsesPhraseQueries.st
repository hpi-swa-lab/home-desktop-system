tests
testGrammarParsesPhraseQueries

	startRule := #PhraseQuery.
	self
		shouldParseAll: #(
			'"Frodo Baggins"'
			'"Frodo"'
			'"1234567890abcdefghijklmnopqrstuvwxyz+*~#-.,;:_!§$%&/()="'
			'"Frodo\"Baggins"'
			'"Frodo\\Baggins"'
			);
		shouldntParseAny: #(
			'Frodo'
			'"Frodo\Baggins"'
			'"Frodo"Baggins"'
			'''Frodo Baggins'''
			)