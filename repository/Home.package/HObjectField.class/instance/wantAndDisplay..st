as yet unclassified
wantAndDisplay: aSelectorSymbol

	self wantedObjectAttribute: aSelectorSymbol.
	self items do: [:item | item displayedKey: aSelectorSymbol]
	