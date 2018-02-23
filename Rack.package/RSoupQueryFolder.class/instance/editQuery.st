accessing
editQuery

	<rackOperationLabel: 'edit query' inContextMenus: true>
	
	^ UIManager default 
		edit: self query decompile decompileString
		label: 'Edit folder query'
		accept: [:value | self query: (Compiler evaluate: value)]