as yet unclassified
openOn: anObject
	^ ToolBuilder open: (self new
		instanceToEdit: anObject;
		yourself)