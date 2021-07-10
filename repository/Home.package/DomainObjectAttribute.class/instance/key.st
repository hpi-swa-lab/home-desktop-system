*Home-SWDEva
key
	"can be nil if the user aborts making a choice"
	| titlesAndValues |
	
	self flag: #ToDo.
	"Base copied from value. Either make a standard keyAndValueMethod and both key and value use that, or remove this (depending on what Patrick wants/needs)"
	
	self attributeNames ifEmpty: [^ nil].
	(self attributeNames size = 1) ifTrue: [^ self attributeNames first].
	titlesAndValues := (self attributeNames
		collect: [:name | name -> (self object attributeValue: name)])
		collect: [:nameAndValue | (nameAndValue key asString , ' (' , nameAndValue value asString , ')') -> nameAndValue key].
	^ UIManager default chooseFrom: (titlesAndValues collect: #key) values: (titlesAndValues collect: #value) title: self userQuestion.