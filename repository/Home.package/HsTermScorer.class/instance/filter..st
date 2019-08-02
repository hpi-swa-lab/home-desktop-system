filtering
filter: aCollection

	^ aCollection select: [:each |
		each fields anySatisfy: [:field |
			self matchesField: field]]