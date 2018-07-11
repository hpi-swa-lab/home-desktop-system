*Home-UI
editorContents

	^ self keys collect: [:key |
			ObjectEditorIndexedWrapper new
				label: key asString;
				instance: self;
				index: key;
				yourself]