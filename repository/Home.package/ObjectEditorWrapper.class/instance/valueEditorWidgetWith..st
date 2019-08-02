ui
valueEditorWidgetWith: aCommandHistory

	| widget |
	widget := self value objectEditorWidgetFor: self withCommandHistory: aCommandHistory.
	self beforeChange: self value objectEditorBeforeChangeConversion.
	^ widget