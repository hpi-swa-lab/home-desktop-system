private
createTextMorph

	^ (instance objectEditorPrintString asHtmlText asMorph) 
		lock;
		hResizing: #spaceFill;
		yourself