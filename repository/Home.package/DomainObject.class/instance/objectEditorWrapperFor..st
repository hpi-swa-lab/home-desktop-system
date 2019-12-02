*Home-UI
objectEditorWrapperFor: aSelector

	^ ObjectEditorSlotWrapper new
			label: (ObjectEditorSlotWrapper labelFrom: aSelector);
			instance: self;
			getterSelector: aSelector;
			setterSelector: aSelector asSimpleSetter;
			onDelete: [self removeAdditionalStateAt: aSelector]
			yourself