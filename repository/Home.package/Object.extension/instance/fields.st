*Home-Search
fields

	| hidden |
	hidden := self getHiddenFieldNames.
	^ Array streamContents: [:stream |
		self getFieldMap do: [:assoc |
			(hidden includes: assoc key) ifFalse: [
				stream nextPut: assoc value]]]