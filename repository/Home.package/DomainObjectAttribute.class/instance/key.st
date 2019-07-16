*Home-SWDEva
key
	"can be nil if the user aborts making a choice"
	| titlesAndValues |
	
	self flag: #todo. "copied from value. Either make this standard and value uses this, or remove this after talking to Patrick (is there maybe even a usecase for only key)"
	
	self attributeNames ifEmpty: [^ nil].
	(self attributeNames size = 1) ifTrue: [^ self attributeNames first].
	titlesAndValues := (self attributeNames
		collect: [:name | name -> (self object attributeValue: name)])
		collect: [:nameAndValue | (nameAndValue key asString , ' (' , nameAndValue value asString , ')') -> nameAndValue key].
	^ UIManager default chooseFrom: (titlesAndValues collect: #key) values: (titlesAndValues collect: #value) title: self userQuestion.