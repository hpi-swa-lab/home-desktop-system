Home-UI
editorContents

	| explorerContents |
	explorerContents := super editorContents.
	^ ((Resolver allInformationOn: self uri) sorted: [:a1 :a2 | a1 key asString < a2 key asString]) collect: [:association |
		association key isAllDigits
			ifTrue: [
				ObjectEditorIndexedWrapper new
					label: association key asString;
					instance: self;
					index: association key;
					yourself]
			ifFalse: [
				ObjectEditorSlotWrapper new
					label: association key asString;
					instance: self;
					getterSelector: association key;
					yourself]]