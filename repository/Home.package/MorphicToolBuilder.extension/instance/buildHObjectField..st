*Home-SWDEva
buildHObjectField: aSpec

	| widget |
	widget := HObjectFieldMorph new.
	
	widget
		model: aSpec model;
		setTextSelector: aSpec setText.
	
	aSpec separator ifNotNil: [widget separator: aSpec separator].
	aSpec wantedObjectAttributeKey ifNotNil: [widget wantedObjectAttributeKey: aSpec wantedObjectAttributeKey].
	
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	parent ifNotNil:[self add: widget to: parent].

	^ widget