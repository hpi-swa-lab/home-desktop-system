toolbuilder
helpText

	^ self class useAdvancedObjectSearch
		ifTrue: [self advancedHelpText]
		ifFalse: ['Search for object' translated asText]