accessing
item: anObject

	item ifNotNil: [item removeDependent: self].
	item := anObject.
	anObject addDependent: self.
	anObject class addDependent: self.