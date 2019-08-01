sync
update: anAspect with: anObject

	| changedObject |
	changedObject := thisContext sender receiver.
	self storeObject: changedObject.