private
createTextMorph

	^ (instance objectEditorPrintString asText asMorph) 
		lock;
		hResizing: #spaceFill;
		yourself