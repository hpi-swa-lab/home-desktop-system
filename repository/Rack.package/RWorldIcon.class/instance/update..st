updating
update: anObject

	WorldState addDeferredUIMessage: [
		((anObject has: #deleted) and: [anObject deleted]) ifTrue: [self abandon].
		self refresh.]