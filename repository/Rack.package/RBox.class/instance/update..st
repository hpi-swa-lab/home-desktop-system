accessing
update: anObject

	(self item = anObject or: [self item class = anObject]) ifTrue: [self changed]