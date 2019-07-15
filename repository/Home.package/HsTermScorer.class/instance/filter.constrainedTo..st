filtering
filter: aCollection constrainedTo: fieldName

	^ aCollection select: [:each |
		self matches: each constrainedTo: fieldName]