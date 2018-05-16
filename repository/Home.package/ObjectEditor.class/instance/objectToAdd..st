initialize-release
objectToAdd: anObject

	self instance add: anObject.
	
	"The following line is sketchy as #add: does not necessarily 
	add an object as the last element in a collection. --pre"
	fieldList addItem: (self widgetFor: (self instance editorContents last)). 
	
	self changed.