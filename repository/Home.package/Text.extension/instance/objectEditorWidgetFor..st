*Home-UI
objectEditorWidgetFor: aWrapper

	| widget |
		
	widget := self size > 100 ifTrue: [UiTextEdit new] ifFalse: [UiLineEdit new].
	widget 
		theText: self;
		autoAccept: true.

	aWrapper connect: widget signal: #textChanged: toSelector: #changeValueTo:.
		
	^ widget