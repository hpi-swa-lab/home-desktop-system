commands
splitNewMorphList: list depth: d 
	| middle c prev next out |
	d <= 0 ifTrue: [^Array with: list].
	middle := list size // 2 + 1.
	c := (list at: middle) name first.
	prev := middle - 1.
	[prev > 0 and: [(list at: prev) name first = c]] 
		whileTrue: [prev := prev - 1].
	next := middle + 1.
	[next <= list size and: [(list at: next) name first = c]] 
		whileTrue: [next := next + 1].
	"Choose the better cluster"
	middle := middle - prev < (next - middle) 
				ifTrue: [prev + 1]
				ifFalse: [next]. 
	middle = 1 ifTrue: [middle := next].
	middle >= list size ifTrue: [middle := prev + 1].
	(middle = 1 or: [middle >= list size]) ifTrue: [^Array with: list].
	out := WriteStream on: Array new.
	out nextPutAll: (self splitNewMorphList: (list copyFrom: 1 to: middle - 1)
				depth: d - 1).
	out 
		nextPutAll: (self splitNewMorphList: (list copyFrom: middle to: list size)
				depth: d - 1).
	^out contents