Rack
interactiveSetRead

	<rackOperationLabel: 'set to read' inContextMenus: true>
	self from: #tags remove: #toread.
	self to: #tags add: #read.