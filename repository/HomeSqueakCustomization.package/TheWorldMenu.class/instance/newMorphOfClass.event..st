commands
newMorphOfClass: morphClass event: evt
	"Attach a new morph of the given class to the invoking hand."

	| m |
	m := morphClass new.
	m installModelIn: myWorld.  "a chance to install model pointers"
	m wantsToBeOpenedInWorld
		ifTrue:[myWorld addMorph: m]
		ifFalse:[evt hand attachMorph: m].
	myWorld startSteppingSubmorphsOf: m.
