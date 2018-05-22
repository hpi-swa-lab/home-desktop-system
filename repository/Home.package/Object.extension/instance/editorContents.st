*Home-UI
editorContents

	^ (self class allInstVarNames asOrderedCollection withIndexCollect: [:each :index |
		ObjectEditorWrapper
			with: (self instVarAt: index)
			name: each
			model: self
			setter: [:newValue | self instVarAt: index put: newValue]]) ,
		((1 to: self basicSize) collect: [:index |
			ObjectEditorWrapper
				with: (self  basicAt: index)
				name: index printString
				model: self
				setter: [:newValue | self basicAt: index put: newValue] ])