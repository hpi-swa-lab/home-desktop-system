adding / removing
updateObjects: aCollection

	aCollection do: [:each |
		self updateObject: each]