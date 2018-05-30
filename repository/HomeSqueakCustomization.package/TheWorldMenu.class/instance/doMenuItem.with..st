action
doMenuItem: aCollection with: event
	| realTarget selector nArgs |
	selector := aCollection second.
	nArgs := selector numArgs.
	realTarget := aCollection first.
	realTarget == #myWorld ifTrue: [realTarget := myWorld].
	realTarget == #myHand ifTrue: [realTarget := myHand].
	realTarget == #myProject ifTrue: [realTarget := self projectForMyWorld].
	^nArgs = 0 
		ifTrue:[realTarget perform: selector]
		ifFalse:[realTarget perform: selector with: event].
