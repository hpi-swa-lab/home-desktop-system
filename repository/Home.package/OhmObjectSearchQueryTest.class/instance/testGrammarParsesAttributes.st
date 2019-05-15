tests
testGrammarParsesAttributes

	startRule := #Attribute.
	self
		shouldParseAll: #( 'name' 'Name' 'times2' );
		shouldntParseAny: #( 'name:' '+' ':' '{' '24hours' )