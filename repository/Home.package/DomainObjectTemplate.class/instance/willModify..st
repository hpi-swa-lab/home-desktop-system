testing
willModify: obj
	"returns false, if applying this template onto obj would not have any effect on it"
	^ self values anySatisfy: [:nameAndValue | | name value |
		name := nameAndValue key.
		value := nameAndValue value.
		((obj respondsTo: name) not) or: [(obj perform: name) isNil and: value notNil]]