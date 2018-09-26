instance creation
openOn: anObject
	^ ToolBuilder open: (self new
		instanceToEdit: anObject;
		yourself)