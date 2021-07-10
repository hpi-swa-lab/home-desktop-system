accessing
exampleValue
	"not asking the user for a value, but picking one"
	"behaves the same as #value when no ambiguity, but picks a random element if multiple are possible."
	self attributeNames ifEmpty: [^ nil].
	^ self object attributeValue: (self attributeNames first)