drag and drop
wantsDroppedMorph: aMorph event: evt

	^ (aMorph isKindOf: RWorldIcon) or: [aMorph isKindOf: RTransferMorph]