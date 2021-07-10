accessing
value
	"can be nil if the user aborts making a choice"
	| titlesAndValues |
	self attributeNames ifEmpty: [^ nil].
	(self attributeNames size = 1) ifTrue: [^ self object attributeValue: (self attributeNames first)].
	titlesAndValues := (self attributeNames
		collect: [:name | name -> (self object attributeValue: name)])
		collect: [:nameAndValue | (nameAndValue key asString , ' (' , nameAndValue value asString , ')') -> nameAndValue value].
	^ UIManager default chooseFrom: (titlesAndValues collect: #key) values: (titlesAndValues collect: #value) title: self userQuestion.