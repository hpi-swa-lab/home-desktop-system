as yet unclassified
wants: aWantedAttributeSymbol labelMinWidth: aNumber

	| row |
	row := (self wants: aWantedAttributeSymbol).
	row label extent: aNumber @ row label extent y.
	^ row