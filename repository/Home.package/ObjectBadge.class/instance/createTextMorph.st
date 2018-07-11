private
createTextMorph

	^ (instance objectEditorPrintString asHtmlText asMorph) 
		lock;
		wrapFlag: true;
		hResizing: #spaceFill;
		yourself