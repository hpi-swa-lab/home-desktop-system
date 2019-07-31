*Home-DnD
handleDropIntoWorldOf: anObject
	| manager choiceStrings values |
	(self isModifierPressed) ifFalse: [^anObject worldIcon].
	
	manager := UIManager default.
	
	"generate genaeral menu entries"
	choiceStrings := {'Drop Object'. 'Open this Object' . 'Browser for ' , anObject class . 'Inspector for ' , anObject class . 'Cancel Dropping'} asOrderedCollection.
	values := {[anObject worldIcon] . [anObject openRackStandardMorph. nil] . [anObject browse. nil.] . [(Inspector openOn: anObject)] . [nil]} asOrderedCollection.
	
	"add a custom menu entry for Images. This can be generalized to create dynamic drop menus (e.g. Objects could know their special menu entries later on)"
	((anObject respondsTo: #containsViewableImage) and: [anObject containsViewableImage]) ifTrue: [|position|
		position := 2.
		choiceStrings add: 'Set as Background' afterIndex: position.
		values add: [Form openAsBackground: anObject name. nil] afterIndex: position.
		].
	
	^(manager chooseFrom: choiceStrings values: values) value.