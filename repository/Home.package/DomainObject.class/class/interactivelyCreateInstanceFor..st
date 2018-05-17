as yet unclassified
interactivelyCreateInstanceFor: sourceString

	| newInstance |
	newInstance := self new.
	newInstance initializeForInteractiveCreate: sourceString.
	ObjectEditor edit: newInstance basedOn: sourceString.
	^ newInstance