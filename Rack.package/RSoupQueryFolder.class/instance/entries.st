accessing
entries

	previousBoxes isEmptyOrNil ifFalse: [previousBoxes do: [:b | b removeDependent: self]].
	previousBoxes := self contents asOrderedCollection 
		collectWithIndex: [:obj :index | RTransientEntry in: self named: obj printString containing: obj].
	previousBoxes do: [:b | b addDependent: self].
	^ previousBoxes