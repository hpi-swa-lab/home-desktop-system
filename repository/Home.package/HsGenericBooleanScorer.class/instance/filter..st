querying
filter: aCollection

	| result |
	result := aCollection.
	self requiredDo: [:scorer |
		result := scorer filter: result].
	self prohibitedDo: [:scorer |
		result := result difference: (scorer filter: result)].
	^ result