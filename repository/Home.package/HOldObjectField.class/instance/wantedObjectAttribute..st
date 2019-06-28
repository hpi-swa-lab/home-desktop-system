as yet unclassified
wantedObjectAttribute: aSelectorSymbol

	self privateWantedObjectAttribute: aSelectorSymbol.
	self items do: [:item | item wantedObjectAttribute: aSelectorSymbol]