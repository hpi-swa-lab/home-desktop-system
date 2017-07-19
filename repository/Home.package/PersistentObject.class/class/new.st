as yet unclassified
new

	| newInstance |
	newInstance := super new.
	(Smalltalk at: self rootName) add: newInstance .
	^ newInstance