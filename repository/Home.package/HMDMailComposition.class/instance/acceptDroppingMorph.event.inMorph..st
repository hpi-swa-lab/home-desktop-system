drag and drop
acceptDroppingMorph: dropee event: evt inMorph: target

	| recipientMorph |
	((target isTextView and: [#(messageRecipient messageCC messageBCC) includes: target getTextSelector]) and: [dropee passenger isPerson])
		ifTrue: [
			self recipientObject: dropee passenger.
			recipientMorph := ((HRWorldIcon newFor: self recipientObject) isInRepresentationMode: true).
			recipientMorph openInWorld.
			recipientMorph position: evt position.
			^ true]
		ifFalse: [^ super acceptDroppingMorph: dropee event: evt inMorph: target]