book keeping
addObject: anObject withFields: fieldNames

	fieldNames do: [:fieldName |
		| fieldSymbol fieldIndex |
		fieldSymbol := fieldName asSymbol.
		(anObject fieldNamed: fieldSymbol) searchTerms ifNotEmpty: [:searchTerms |
			fieldIndex := self ensureFieldIndexFor: fieldSymbol.
			searchTerms do: [:term |
				self record: anObject in: fieldIndex at: term]]]