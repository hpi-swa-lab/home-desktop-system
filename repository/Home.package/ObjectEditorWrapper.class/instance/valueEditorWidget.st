ui
valueEditorWidget

	| widget |
	widget := self value objectEditorWidgetFor: self.
	self beforeChange: self value objectEditorBeforeChangeConversion.
	^ widget