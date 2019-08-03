*Home-DnD
handleDropIntoWorldOf: anObject andOpenMenu: shouldOpen
	| manager choiceStrings values |
	(shouldOpen not) ifTrue: [^anObject worldIcon].
	manager := UIManager default.
	
	"generate general menu entries"
	choiceStrings := {'Drop a copy of the Object'. 'Open this Object' . 'Browser for ' , anObject class . 'Inspector for ' , anObject class . 'Cancel Dropping'} asOrderedCollection.
	values := {[anObject worldIcon] . [anObject openRackStandardMorph. nil] . [anObject browse. nil.] . [(Inspector openOn: anObject)] . [nil]} asOrderedCollection.
	
	"add a custom menu entry for Images. This can be generalized to create dynamic drop menus (e.g. Objects could know their special menu entries later on)"
	((anObject respondsTo: #containsViewableImage) and: [anObject containsViewableImage]) ifTrue: [|position|
		position := 2.
		choiceStrings add: 'Set as Background' afterIndex: position.
		values add: [Form openAsBackground: anObject name. nil] afterIndex: position.
		].
	
	^(manager chooseFrom: choiceStrings values: values) value.