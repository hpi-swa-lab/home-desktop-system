fields
turnIntoClass

	| newClassName |
	newClassName := UIManager default request: 'Enter name for new class'.
	newClassName isEmpty ifTrue: [^ self].
	self instance saveAsClassNamed: newClassName