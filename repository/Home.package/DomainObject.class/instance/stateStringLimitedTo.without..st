printing
stateStringLimitedTo: limit without: excludedTypeObject
	"as long as there is place, collect additional state strings (in priority order) and join them all together"
	| states size |
	states := OrderedCollection new.
	size := [(states collect: [:s | s size]) ifEmpty: [0] ifNotEmpty: [:c | c reduce: [:a :b | a + 2 + b]]].
	self allTypeObjectsSorted do: [:typeObject | typeObject = excludedTypeObject ifFalse: [(typeObject stateStringOf: self) ifNotNilDo: [:stateString |
		((size value + 2 + stateString size) <= limit) ifTrue: [states add: stateString]]]].
	^ states ifEmpty: [''] ifNotEmpty: [states reduce: [:a :b | a , ', ' , b]].