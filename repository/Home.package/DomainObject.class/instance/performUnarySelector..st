error handling
performUnarySelector: aSelector
	"try to find a type object that can execute the given command. If nothing found, try finding additional state under the given name"
	| typeSelector |
	typeSelector := (aSelector asString , ':') asSymbol.
	self allTypeObjects do: [ :typeObject |
		(typeObject respondsTo: typeSelector) ifTrue: [^ self performType: typeObject Operation: typeSelector].
	].
	^ self getAdditionalStateAt: aSelector