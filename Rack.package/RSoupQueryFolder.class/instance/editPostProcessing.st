accessing
editPostProcessing

	<rackOperationLabel: 'edit post processing' inContextMenus: true>
	
	^ UIManager default 
		edit: self postProcessing decompile decompileString
		label: 'Edit folder post processing'
		accept: [:value | self postProcessing: (Compiler evaluate: value)]