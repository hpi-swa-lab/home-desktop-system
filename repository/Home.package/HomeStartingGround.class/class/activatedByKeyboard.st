preferences
activatedByKeyboard

	<preference: 'Open the starting ground by keyboard'
		category: 'Home - UI'
		description: 'If enabled, you can access the home starting ground through Alt+1'
		type: #Boolean>
	^ ActivatedByKeyboard ifNil: [false]