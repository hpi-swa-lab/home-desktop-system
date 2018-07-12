event handling
wantsDroppedMorph: aMorph event: evt
	
	^ (aMorph isKindOf: TransferMorph)
		ifFalse: [self resetBackgroundColor. false]