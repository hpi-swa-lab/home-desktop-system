querying
score: anObject

	| target dist distScore lenScore |
	target := anObject asString.
	target size = 0 ifTrue: [^ 0].
	dist := target substringEditDistanceTo: value.
	dist > fuzziness ifTrue: [^ 0].
	distScore := 1 - (dist / (fuzziness + 1)). "max 1"
	lenScore := (value size - dist) / target size. "max 1"
	^ (distScore + lenScore) / 2