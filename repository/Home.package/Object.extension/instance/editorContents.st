*Home-UI
editorContents

	| variablesWithGetters variablesWithOnlyGetters variablesWithSetters |
	variablesWithGetters := (self class allInstVarNames asOrderedCollection collect: #asSymbol) intersection: self class allSelectors.
	variablesWithSetters := variablesWithGetters select: [:variableName | 
		self respondsTo: variableName asSimpleSetter].
	variablesWithOnlyGetters := variablesWithGetters difference: variablesWithSetters.
	
	^ 	(variablesWithOnlyGetters collect: [:varName |
			ObjectEditorSlotWrapper new
				label: (ObjectEditorSlotWrapper labelFrom: varName);
				instance: self;
				getterSelector: varName;
				yourself]),
		(variablesWithSetters collect: [:varName |
			ObjectEditorSlotWrapper new
				label: (ObjectEditorSlotWrapper labelFrom: varName);
				instance: self;
				getterSelector: varName;
				setterSelector: (varName asSimpleSetter);
				yourself])