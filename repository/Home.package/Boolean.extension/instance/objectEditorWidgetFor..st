*Home-UI
objectEditorWidgetFor: aWrapper

	| widget |
	widget := UiCheckBox new
		checked: self;
		text: ' ';
		yourself.
	aWrapper connect: widget signal: #toggled: toSelector: #changeValueTo:.
	^ widget