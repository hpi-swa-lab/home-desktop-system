event handling
keyPressed: character

	character = Character space
		ifTrue: [self getSelectedEntry item openRackStandardMorph].
		
	character = Character delete ifTrue: [ self getSelectedEntry remove ].