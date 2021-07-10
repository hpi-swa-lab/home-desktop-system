*Home-DnD
passenger: anObject

	passenger := anObject.
	
	self
		removeAllMorphs;
		addMorph: passenger asDraggableMorph;
		addMorph: passenger worldIconMorph;
		updateCopyIcon;
		setDefaultParameters.