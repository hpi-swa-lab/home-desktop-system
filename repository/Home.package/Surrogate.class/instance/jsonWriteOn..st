json
jsonWriteOn: str

	| rawDictionary |
	rawDictionary := Dictionary newFrom: ((Resolver allInformationOn: self uri) sorted: [:a1 :a2 | a1 key asString < a2 key asString]).
	rawDictionary at: #identity put: self uri.
	rawDictionary jsonWriteOn: str.