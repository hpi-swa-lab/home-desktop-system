instance creation
new

	| newInstance |
	newInstance := super new.
	(Smalltalk at: self rootName) add: newInstance.
	self changed.
	^ newInstance