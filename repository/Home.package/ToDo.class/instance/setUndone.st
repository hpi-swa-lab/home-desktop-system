accessing
setUndone

	<rackOperationLabel: 'set undone' inContextMenus: true>

	self isDone ifTrue: [
		self done: false.
		self changed]