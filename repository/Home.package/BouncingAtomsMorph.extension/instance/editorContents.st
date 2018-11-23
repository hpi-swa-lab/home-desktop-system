*Home-UI
editorContents

	^ super editorContents, {
		ObjectEditorSlotWrapper new
			label: 'Number of atoms';
			instance: self;
			getterSelector: #numberOfAtoms;
			setterSelector: #setAtoms:;
			yourself}