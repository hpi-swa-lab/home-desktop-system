actions
setValueTo: anObject
	"In contrast to changeValueTo: this method does conceptually replace a
	value and thus does not try to preserve the UI. It is primarily
	intended to be called when an object was dropped into the editor."
	
	self subclassResponsibility