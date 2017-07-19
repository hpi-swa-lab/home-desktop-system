as yet unclassified
update: anObject

	((anObject has: #deleted) and: [anObject deleted]) ifTrue: [^ self abandon].
	
	self refresh.