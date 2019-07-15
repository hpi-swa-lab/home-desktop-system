filtering
filter: aCollection

	| matches |
	matches := (Array streamContents: [:stream |
					index postingsFor: value do: [:postings |
						stream nextPutAll: postings keys]]) asSet.
	^ aCollection intersection: matches