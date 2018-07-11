*Home-UI
editorContents

	| explorerContents |
	explorerContents := super editorContents.
	^ (Resolver allInformationOn: self uri) collect: [:association |
		ObjectEditorSlotWrapper
			with: association value 
			name: association key asString
			model: self
			setter: [:newValue | ]]