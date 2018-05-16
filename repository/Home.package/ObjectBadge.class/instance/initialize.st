initialize-release
initialize
	super initialize.

	self
		addStyleClass: #objectBadge;
		add: self initializeButton at: 2;
		withLayout;
		align: #(fill start);
		expand: true;
		on: #startDrag send: #startDragging: to: self;
		on: #doubleClick send: #doubleClick: to: self;
		when: #rightClicked send: #openMenu to: self.
		
		.