*Home-UI
objectEditorWidgetFor: aWrapper

	| widget |
	widget := UiLineEdit new.
	widget 
		theText: self asString;
		autoAccept: true.
	aWrapper connect: widget signal: #textChanged: toSelector: #changeValueTo:.		
	^ widget