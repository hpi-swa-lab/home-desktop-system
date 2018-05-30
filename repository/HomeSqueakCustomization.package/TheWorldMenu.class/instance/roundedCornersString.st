action
roundedCornersString

	^ (((SystemWindow roundedWindowCorners)
		ifTrue: ['stop']
		ifFalse: ['start']) , ' rounding window corners') translated