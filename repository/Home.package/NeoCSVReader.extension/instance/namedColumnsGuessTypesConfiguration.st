*Home-Core
namedColumnsGuessTypesConfiguration
	"Assuming there is a header row that has not yet been read,
	configure the receiver to read each row as a Dictionary where
	each field is stored under a column name.
	Note that each field is read as a string."
	
	self recordClass: Dictionary.
	self	recordClassIsIndexable: false.
	(self readHeader collect: [ :each | each asSymbol ]) do: [:accessor |
		self addFieldAccessor: [:object :string | 
			object at: accessor put: ([string asNumber] on: NumberParserError do: [string])]]