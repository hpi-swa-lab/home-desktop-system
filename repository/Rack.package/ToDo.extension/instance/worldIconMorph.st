*Rack
worldIconMorph

	| icon |
	icon := self isDone 
		ifFalse: [RIcons icons8UncheckedCheckbox64pxIcon]
		ifTrue: [RIcons icons8TickBox64pxcoloredIcon].
	^ (icon scaledToSize: 24@24) asMorph
		