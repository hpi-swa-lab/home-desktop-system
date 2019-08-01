*Home-Search
fieldDict

	| fieldDict |
	fieldDict := self getFieldDict.
	self getHiddenFieldNames do: [:fieldName |
		fieldDict removeKey: fieldName ifAbsent: []].
	^ fieldDict