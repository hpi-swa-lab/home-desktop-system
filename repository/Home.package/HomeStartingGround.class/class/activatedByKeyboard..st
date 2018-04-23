as yet unclassified
activatedByKeyboard: aBoolean

	aBoolean
		ifTrue: [ActiveHand addKeyboardListener: self instance]
		ifFalse: [ActiveHand removeKeyboardListener: self instance].
		
	ActivatedByKeyboard := aBoolean.
