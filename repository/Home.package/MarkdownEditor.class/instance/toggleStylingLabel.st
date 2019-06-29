code pane menu
toggleStylingLabel

	^self shouldStyle 
		ifTrue: [ '<on> markdown highlighting' ]
		ifFalse: [ '<off> markdown highlighting' ]