*Home-UI
editorContents

	^ Array new: self size streamContents: [ :stream |
		self do: [ :each | | index |
			index := stream position + 1.
			stream nextPut: (
				ObjectEditorIndexedWrapper new
					instance: self;
					label: index printString;
					index: index;
					yourself)]]