instance creation
interactivelyCreateInstanceFor: sourceString

	| newInstance |
	newInstance := self new.
	newInstance initializeForInteractiveCreate: sourceString.
	newInstance interactiveEdit.
	^ newInstance