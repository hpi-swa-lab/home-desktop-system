instance creation
fromString: aString

	| match |
	match := HsQueryLanguage match: aString.
	^ match failed
		ifTrue: [nil]
		ifFalse: [HsBuildQuery new value: match]