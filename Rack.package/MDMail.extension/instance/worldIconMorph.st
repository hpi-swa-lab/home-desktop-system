*Rack
worldIconMorph

	| icon |
	icon := RMailIcon new.
	self hasBeenRead
		ifTrue: [icon makeOpenedLid]
		ifFalse: [icon makeClosedLid].
	^ icon