adding / removing
deleteObjects: aCollection

	aCollection do: [:each |
		self deleteObject: each]