*Home-Search
at: key ifPresentPut: oneArgBlock ifAbsentPut: absentBlock

	| index value |
	index := self scanFor: key.
	(array at: index) ifNotNil: [:element |
		value := (oneArgBlock value: element value).
		element value: value.
		^ value].
	value := absentBlock value.
	self atNewIndex: index put: (self associationClass key: key value: value).
	^value