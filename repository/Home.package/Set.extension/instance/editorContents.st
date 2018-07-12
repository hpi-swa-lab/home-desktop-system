*Home-UI
editorContents 

	^Array new: self size streamContents: [ :stream |
		(self asArray sorted: [:o1 :o2 | o1 printString < o2 printString])
			do: [:each | | index |
				index := stream position + 1.
				stream nextPut: (
					ObjectEditorSetItemWrapper new
						instance: self;
						label: index printString;
						index: index;
						yourself)]]
		