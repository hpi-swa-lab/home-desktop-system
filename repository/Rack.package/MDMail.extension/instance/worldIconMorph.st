*Rack
worldIconMorph
	| icon |
	icon := self hasBeenRead
		ifTrue: [RIcons icons8ReadMessage64px1Icon]
		ifFalse: [RIcons icons8Message64px1Icon].
	^ (icon scaledToSize: 35@35) asMorph