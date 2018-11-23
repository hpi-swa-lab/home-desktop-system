actions
Entry: aNode withIdentifier: identifier withLiteral: x withKey: key andBody: body andLiteral: xx

	| properties refKey type newWork title |
	type := identifier interval contents.
	refKey := key interval contents.
	properties := (self value: body) copy asOrderedCollection .
	properties add: #publicationType -> type.
	properties add: #referenceKey -> refKey.
	properties := properties collect: [:p | p key asLowercase -> p value].
	properties := Dictionary newFrom: properties.

	(properties includesKey: #doi)
		ifTrue: [ |doi doiCandidates|
			doi := (properties at: #doi) copyWithoutAll: '{}'.
			doiCandidates := CreativeWork all select: [:c | (c ? #creativeWork) = doi].
			doiCandidates size = 1 ifTrue: [^ doiCandidates first]].
	
	title := ((properties at: #title) copyWithoutAll: '{}').
	newWork := CreativeWork resolve: title automaticAccept: false.
	
	(type = 'article' and: [(newWork ? #type) asString asLowercase = 'inproceedings']) ifTrue: [
		"We prefer information on proceedings over information on articles"
		^ newWork].
	
	(BibtexImporter processBibTexProperties: properties) do: [:property |
		newWork perform: (property key , $:) asSymbol withArguments: {property value}].

	(newWork ?? #authors) do: [:p | p authorOf: newWork].

	^ newWork
