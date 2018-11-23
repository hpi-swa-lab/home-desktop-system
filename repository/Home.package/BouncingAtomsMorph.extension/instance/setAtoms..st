*Home-UI
setAtoms: count

	self removeAllMorphs.
	self addAtoms: count.
	self changed.
	self startStepping