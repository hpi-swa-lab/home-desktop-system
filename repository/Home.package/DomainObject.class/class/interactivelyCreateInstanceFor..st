as yet unclassified
interactivelyCreateInstanceFor: sourceString

	| newInstance |
	newInstance := self new.
	newInstance initializeForInteractiveCreate: sourceString.
	HomeForm edit: newInstance basedOn: sourceString.
	^ newInstance