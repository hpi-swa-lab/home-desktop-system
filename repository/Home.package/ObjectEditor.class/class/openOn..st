instance creation
openOn: anObject

	| editor area |
	editor := self expandedFor: anObject.
	editor 
		width: (600 max: editor width);
		height: (500 max: editor height);
		hResizing: #spaceFill.
	area := UiScrollArea new
		width: editor width;
		height: editor height;
		color: editor color;
		horizontalScrollBarPolicy: #alwaysOff;
		widgetResizable: true;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		widget: editor.
	area verticalScrollBar
		singleStep: 20;
		outerBorderWidth: 0;
		color: Color transparent.
	^ area openInWindowLabeled: 'Object editor on ' , editor instance objectEditorPrintString.
	