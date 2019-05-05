dynamic behavior
can: aSelector
	"a counterpart to #has: - does this DomainObject can perform a given action by its type objects?"
	| typeSelector |
	(aSelector endsWith: ':') ifTrue: [^ false].
	typeSelector := (aSelector asString , ':') asSymbol.
	^ self allTypeObjects anySatisfy: [:typeObject | typeObject respondsTo: typeSelector].