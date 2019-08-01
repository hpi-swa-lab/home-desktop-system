toolbuilder-adjusted
createObjectRecipientFieldNamed: fieldLabelGetter getter: fieldGetter setter: fieldSetter with: aBuilder

	^ aBuilder hObjectFieldSpec new
		model: self;
		wantedObjectAttributeKey: #email;
		separator: ',';
		setText: fieldSetter;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0 offset: self lineHeight);
		name: fieldGetter;
		yourself