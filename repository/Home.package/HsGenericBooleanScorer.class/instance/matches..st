querying
matches: anObject

	filters do: [:scorer |
		(scorer matches: anObject) ifFalse: [^ false]].
	mustNots do: [:scorer |
		(scorer matches: anObject) ifTrue: [^ false]].
	musts do: [:scorer |
		(scorer matches: anObject) ifFalse: [^ false]].
	musts size = 0 ifTrue: [
		shoulds do: [:scorer |
			(scorer matches: anObject) ifTrue: [^ true]]].
	^ true