as yet unclassified
edit

	<rackOperationLabel: 'edit' inContextMenus: true>

	^ UIManager default 
		edit: self content 
		label: 'Diary Entry: ' , self date asString
		accept: [:value | self content: value]