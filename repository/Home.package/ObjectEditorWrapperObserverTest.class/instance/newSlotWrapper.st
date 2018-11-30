fixtures
newSlotWrapper
	
	^ ObjectEditorSlotWrapper new
		label: 'Number of atoms';
		getterSelector: #fieldA;
		setterSelector: #fieldA:;
		yourself