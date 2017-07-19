as yet unclassified
interactivelyCreateInstanceFor: sourceString

	| newInstance |
	newInstance := self new.
	HomeForm edit: newInstance basedOn: sourceString.
	^ newInstance