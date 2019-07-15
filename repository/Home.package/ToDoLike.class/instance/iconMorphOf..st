as yet unclassified
iconMorphOf: object
	| icon |
	icon := (self doneAttribute: object) exampleValue  
		ifFalse: [RIcons icons8UncheckedCheckbox64pxIcon]
		ifTrue: [RIcons icons8TickBox64pxcoloredIcon].
	^ (icon scaledToSize: 24@24) asMorph