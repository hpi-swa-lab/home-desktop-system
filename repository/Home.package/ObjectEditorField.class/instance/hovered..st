private
hovered: aBoolean

	hovered := aBoolean.
	self styleContext stateHover: aBoolean.
	self changed