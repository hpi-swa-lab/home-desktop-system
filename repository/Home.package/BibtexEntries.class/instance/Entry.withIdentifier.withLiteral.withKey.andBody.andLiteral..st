as yet unclassified
Entry: aNode withIdentifier: identifier withLiteral: x withKey: key andBody: body andLiteral: xx

	| properties refKey type newWork |
	type := identifier interval contents.
	refKey := key interval contents.
	properties := (self value: body) copy.
	properties add: #publicationType -> type.
	properties add: #referenceKey -> refKey.
	properties := properties collect: [:p | p key asLowercase -> p value].
	properties := Dictionary newFrom: properties.

	newWork := CreativeWork resolve: (properties at: #title).
	(BibtexImporter processBibTexProperties: properties) do: [:property |
		newWork perform: (property key , $:) asSymbol withArguments: {property value}].

	^ newWork
