accessing
printOn: aStream

	(self has: #course) ifTrue: [self course printOn: aStream. aStream space].
	(self has: #groupName) ifTrue: [aStream nextPutAll: self groupName , ': '].
	^ aStream nextPutAll: ((self members collect: [:m | m printString ]) asOrderedCollection joinSeparatedBy: ', ').