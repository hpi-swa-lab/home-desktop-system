accessing
editQuery

	<rackOperationLabel: 'edit query' inContextMenus: true>
	
	^ UIManager default 
		edit: self query decompile
		label: 'Edit folder query'
		accept: [:value | self query: value]