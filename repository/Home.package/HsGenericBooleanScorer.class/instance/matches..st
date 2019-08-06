querying
matches: aMatch

	filters do: [:scorer |
		(scorer matches: aMatch) ifFalse: [^ false]].
	mustNots do: [:scorer |
		(scorer matches: aMatch) ifTrue: [^ false]].
	musts do: [:scorer |
		(scorer matches: aMatch) ifFalse: [^ false]].
	musts size = 0 ifTrue: [
		shoulds do: [:scorer |
			(scorer matches: aMatch) ifTrue: [^ true]]].
	^ true