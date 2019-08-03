*Home-DnD
acceptDroppingMorph: dropped event: evt
	"The supplied morph, known to be acceptable to the receiver, is now to be assimilated; the precipitating event is supplied"

	| aMorph |
	aMorph := self morphToDropFrom: dropped.
	self isWorldMorph
		ifTrue:["Add the given morph to this world and start stepping it if it wants to be."
				aMorph ifNil: [^self].
				aMorph isInWorld not ifTrue: [aMorph position: evt position].
				self addMorphFront: aMorph.
				(aMorph fullBounds intersects: self viewBox) ifFalse:
					[Beeper beep.  aMorph position: self bounds center]]
		ifFalse:[super acceptDroppingMorph: aMorph event: evt].

	aMorph submorphsDo: [:m | (m isKindOf: HaloMorph) ifTrue: [m delete]].
	aMorph allMorphsDo:  "Establish any penDown morphs in new world"
		[:m | | tfm mm |
		m player ifNotNil:
			[m player getPenDown ifTrue:
				[((mm := m player costume) notNil and: [(tfm := mm owner transformFrom: self) notNil])
					ifTrue: [self noteNewLocation: (tfm localPointToGlobal: mm referencePosition)
									forPlayer: m player]]]].

	self isPartsBin
		ifTrue:
			[aMorph isPartsDonor: true.
			aMorph stopSteppingSelfAndSubmorphs.
			aMorph suspendEventHandler]
		ifFalse:
			[self world startSteppingSubmorphsOf: aMorph].

"	self presenter morph: aMorph droppedIntoPasteUpMorph: self."
	self griddingOn ifTrue: [aMorph position: (self gridPoint: aMorph position)].
	self showingListView ifTrue:
		[self sortSubmorphsBy: (self valueOfProperty: #sortOrder).
		self currentWorld abandonAllHalos].

	self bringTopmostsToFront.
