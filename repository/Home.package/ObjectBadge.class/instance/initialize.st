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
		
	self addFallbackStyles: (PHStyleProvider new
		add: ((PHStyle for: #objectBadge)
					border: 0 color: #'000';
					backgroundColor: #'eee';
					padding: (Rectangle left: 6 right: 0 top: 4 bottom: 4);
					color: #'000');
		add: ((PHStyle for: #objectBadge asStyle > #label)
					padding: (Rectangle left: 6 right: 0 top: 4 bottom: 4));
		add: ((PHStyle for: #objectBadge asStyle > #button)
				backgroundColor: #ccc;
				color: #'000';
				border: 0 color: #'000');	
		yourself)