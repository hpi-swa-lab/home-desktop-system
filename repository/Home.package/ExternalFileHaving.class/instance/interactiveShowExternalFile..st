operations
interactiveShowExternalFile: object
	<rackOperationLabel: 'show external file' inContextMenus: true>
	|path|
	path := (self fileAttribute: object) value.
	path ifNil: [^self].
	
	OSProcess openFileWithPath: path.