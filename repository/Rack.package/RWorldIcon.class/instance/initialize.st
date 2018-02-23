initialization
initialize

	super initialize.
	self color: Color transparent.
	
	self initializeIconAndText.
	
	self beUnsticky.
	
	self on: #doubleClick send: #openObject to: self.
	self on: #startDrag send: #startDragging: to: self.