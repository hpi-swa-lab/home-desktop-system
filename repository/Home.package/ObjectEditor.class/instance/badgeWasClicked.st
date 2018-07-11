fields
badgeWasClicked

	self submorphs size > 1
		ifTrue: [self removeAllButFirstSubmorph]
		ifFalse: [self refreshFields]

	