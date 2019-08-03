toolbuilder-adjusted
buildWith: aBuilder

	| tool recipientField recipientFieldOwner |
	tool := super buildWith: aBuilder.
	
	recipientField := tool
		findDeepSubmorphThat: [:m | (m isTextView)
			ifTrue: [m getTextSelector = #messageRecipient]
			ifFalse: [false]]
		ifAbsent: [^ tool]. 
	
	recipientFieldOwner := recipientField owner.
	
	self mailRecipientField: (HObjectFieldMorph wanting: #email).
	
	recipientFieldOwner replaceSubmorph: recipientField by: self mailRecipientField.
	
	^ tool