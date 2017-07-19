accessing
printOn: aStream

	(self has: #groupName) ifTrue: [aStream nextPutAll: self groupName , ': '].
	^ aStream nextPutAll: ((self members collect: [:m | m printString]) joinSeparatedBy: ', ').