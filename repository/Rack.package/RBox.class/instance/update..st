accessing
update: anObject

	WorldState addDeferredUIMessage: [(self item = anObject or: [self item class = anObject]) ifTrue: [self changed]]