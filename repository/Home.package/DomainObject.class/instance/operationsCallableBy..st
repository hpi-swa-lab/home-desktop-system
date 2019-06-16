error handling
operationsCallableBy: aSelector
	"returns a list of (typeObject -> selector) tuples that can be called by that selector, in priority order"
	| result |
	result := OrderedCollection new.
	self allTypeObjects do: [ :typeObject |
		result addAll: ((Pragma allNamed: 'callableAs:' in: typeObject class)
			select: [:pr | pr arguments first asSymbol = aSelector]
			thenCollect: [:pr | typeObject -> pr method selector]).
	].
	self allTypeObjects do: [ :typeObject | | typeSelector |
		typeSelector := aSelector asMutator.
		(typeObject respondsTo: typeSelector) ifTrue: [result add: (typeObject -> typeSelector)].
	].

	^ result