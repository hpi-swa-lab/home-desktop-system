accessing
object: anObject

	super object: anObject.
	(self privateParentWidget notNil and: [self privateParentWidget isKindOf: HObjectFieldMorph]) ifTrue: [
		self privateParentWidget textChanged]