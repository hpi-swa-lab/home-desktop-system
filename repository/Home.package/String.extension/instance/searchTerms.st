*Home-Search
searchTerms

	| result lastStart |
	result := OrderedCollection new.
	lastStart := nil.
	1 to: self size do: [:i |
		((self at: i) isAscii and: [(self at: i) isAlphaNumeric])
			ifTrue: [	lastStart ifNil: [lastStart := i]]
			ifFalse: [
				lastStart ifNotNil: [
					result add: (self copyFrom: lastStart to: i-1) translateToLowercase.
					lastStart := nil]]].
	lastStart ifNotNil: [result add: (self copyFrom: lastStart to: self size) translateToLowercase].
	^ result asArray