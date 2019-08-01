searching
advancedSearch: aString

	^ (HsQuery fromString: aString)
		ifNil: [#()]
		ifNotNil: [:query | query search: soup]