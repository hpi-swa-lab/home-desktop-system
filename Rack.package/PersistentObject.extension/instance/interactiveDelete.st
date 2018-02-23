*Rack
interactiveDelete

	<rackOperationLabel: 'delete for good' inContextMenus: true>
	
	(UIManager confirm: 'Do you really want to delete this object? You can not restore it!')
		ifTrue: [self delete. self deleted: true. self changed].