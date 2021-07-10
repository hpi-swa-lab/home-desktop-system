*Home-Search
searchWords

	| result lastStart |
	result := OrderedCollection new: self size // 5.
	lastStart := nil.
	1 to: self size do: [:i |
		| char |
		((char := (self at: i)) isAscii and: [char isAlphaNumeric])
			ifTrue: [	
				lastStart ifNil: [lastStart := i]]
			ifFalse: [
				lastStart ifNotNil: [
					result addLast: (self copyFrom: lastStart to: i-1) translateToLowercase.
						lastStart := nil]]].
		lastStart ifNotNil: [
			result addLast: (self copyFrom: lastStart to: self size) translateToLowercase].
	^ result asArray