accessing
rename

	<rackOperationLabel: 'rename entry' inContextMenus: true>
	
	| newLabel |
	newLabel := UIManager default request: 'Enter the new name' initialAnswer: self label.
	self parent rename: self label to: newLabel. 
	self label: newLabel