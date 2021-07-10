*Home-UI
objectEditorWidgetFor: aWrapper withCommandHistory: aCommandHistory

	| widget |
		
	widget := UiTextEdit new.
	widget 
		theText: self;
		autoAccept: true.

	aWrapper connect: widget signal: #textChanged: toSelector: #changeValueTo:.
		
	^ widget