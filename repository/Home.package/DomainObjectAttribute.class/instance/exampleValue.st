accessing
exampleValue
	"not asking the user for a value, but picking one"
	self attributeNames ifEmpty: [^ nil].
	^ self object attributeValue: (self attributeNames first)