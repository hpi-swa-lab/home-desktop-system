*Home-UI
objectEditorWidgetFor: aWrapper

	| widget |
		
	widget := UiTextEdit new.
	widget 
		theText: self;
		autoAccept: true.

	aWrapper connect: widget signal: #textChanged: toSelector: #changeValueTo:.
		
	^ widget