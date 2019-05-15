tests
testGrammarParsesObjectFilter

	startRule := #ObjectFilter.
	self
		shouldParseAll: #(
			'{name: ''Patrick Rein'' & age: 100}'
			'{name=''Patrick Rein''}'
			'{name==''Patrick Rein''}'
			'{name: ''date:'' date: 24}'
			);
		shouldntParseAny: #(
			'{name: date:}'
			)