tests
testGrammarParsesFieldQueries

	startRule := #FieldQuery.
	self
		shouldParseAll: #(
			'fullName:{Frodo}'
			'fullName: {Frodo}'
			'field: { Frodo }'
			'{ Frodo }'
			'field: { field: { field: { Frodo } } }'
			'field: {{Frodo}}'
			'field_name: {Frodo}'
			'field: {-Frodo +Baggins}'
			);
		shouldntParseAny: #(
			'fullName : {Frodo}'
			'field: {}'
			'field={Frodo}'
			'field: Frodo'
			'field:name: {  }'
			'field:'
			'föld: {Frodo}'
			'{ }'
			)