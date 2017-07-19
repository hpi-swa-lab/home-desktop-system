accessing
setDone

	<rackOperationLabel: 'set done' inContextMenus: true>

	self isDone ifFalse: [
		self done: true.
		self changed]