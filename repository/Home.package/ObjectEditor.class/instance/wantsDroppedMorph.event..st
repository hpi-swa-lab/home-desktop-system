drag and drop
wantsDroppedMorph: aMorph event: evt
	^ (aMorph isKindOf: TransferMorph) or: [aMorph isWorldIcon]