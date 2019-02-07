Home-UI
editorContents

	^ super editorContents , {
		ObjectEditorSlotWrapper new
				label: 'Students';
				instance: self;
				getterSelector: #members;
				yourself}