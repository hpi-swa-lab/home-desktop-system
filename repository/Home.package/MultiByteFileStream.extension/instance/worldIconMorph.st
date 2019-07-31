*Home-DnD
worldIconMorph
	self containsViewableImage 
	ifTrue: [^[self reopen.
			((Form fromBinaryStream: self) scaledToSize: 64@64) asMorph] 
		ensure: [self close]].
	^ (RIcons icons8Document64pxIcon scaledToSize: 32@32) asMorph