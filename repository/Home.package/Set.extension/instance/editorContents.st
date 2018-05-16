*Home-UI
editorContents 

	^Array new: self size streamContents: [ :stream |
		self do: [ :each |
			stream nextPut: (
				ObjectEditorWrapper
					with: each
					name: (stream position + 1) printString
					model: self
					setter: [:newValue | self remove: each ifAbsent: []. self add: newValue ]) ] ]