*Rack
worldIconMorph

	| morph |
	morph := RToDoIcon new.
	self isDone ifTrue: [morph setDone]. 
	^ morph
		