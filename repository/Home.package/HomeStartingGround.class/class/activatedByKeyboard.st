as yet unclassified
activatedByKeyboard

	<preference: 'Activated by Keyboard'
		category: 'Home - UI'
		description: 'If enabled, you can access the home starting ground through Alt+1'
		type: #Boolean>
	^ ActivatedByKeyboard ifNil: [false]