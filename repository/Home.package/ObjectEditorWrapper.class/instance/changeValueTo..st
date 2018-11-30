actions
changeValueTo: anObject
	"This method changes a value and does not replace it by another one. Thus it
	tries to preserve the user interface. This method should trigger an observer
	notification on the wrapped instance."
	
	self subclassResponsibility