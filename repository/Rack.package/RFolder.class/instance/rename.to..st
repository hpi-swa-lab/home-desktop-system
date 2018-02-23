modifying
rename: boxName to: newBoxName

	| box |
	box := self at: boxName.
	box label: newBoxName.
	self changed.
	^ box
	