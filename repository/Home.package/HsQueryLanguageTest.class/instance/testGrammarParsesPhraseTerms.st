tests
testGrammarParsesPhraseTerms

	startRule := #PhraseTerm.
	self
		shouldParseAll: #(
			'"Patrick Rein"'
			'"Patrick"'
			'"1234567890abcdefghijklmnopqrstuvwxyz+*~#-.,;:_!§$%&/()="'
			'"Patrick\"Rein"'
			'"Patrick\\Rein"'
			);
		shouldntParseAny: #(
			'Patrick'
			'"Patrick\Rein"'
			'"Patrick"Rein"'
			'''Patrick Rein'''
			)