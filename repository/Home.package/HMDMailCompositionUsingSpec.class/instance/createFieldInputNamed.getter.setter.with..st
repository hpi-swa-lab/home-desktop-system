toolbuilder-adjusted
createFieldInputNamed: fieldLabelGetter getter: fieldGetter setter: fieldSetter with: aBuilder

	^ fieldLabelGetter = #recipientLabel
		ifTrue: [self createObjectRecipientFieldNamed: fieldLabelGetter getter: fieldGetter setter: fieldSetter with: aBuilder]
		ifFalse: [super createFieldInputNamed: fieldLabelGetter getter: fieldGetter setter: fieldSetter with: aBuilder]