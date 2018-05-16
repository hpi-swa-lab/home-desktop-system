initialize-release
initialize

	super initialize.
	
	self
		withLayout;
		vertical: true;
		expand: false;
		extent: self initialExtent.
	
	self addApplicationStyles: (PHStyleProvider new
			add: ((PHStyle for: #fieldList)
					spacing: 5);
			add: ((PHStyle for: #objectBadge)
					border: 0 color: #'000';
					backgroundColor: #'eee';
					padding: (Rectangle left: 0 right: 6 top: 4 bottom: 4);
					color: #'000');
			add: ((PHStyle for: #objectBadge asStyle > #label)
					padding: (Rectangle left: 6 right: 0 top: 4 bottom: 4));
			add: ((PHStyle for: #objectBadge asStyle > #button)
					backgroundColor: #ccc;
					color: #'000';
					border: 0 color: #'000');
			add: ((PHStyle for: #objectEditorField state: #hover)
					border: 1 color: #'aaa';
					yourself);
			add: ((PHStyle for: #objectEditorField asStyle > #column)
					spacing: 5;
					yourself);
			add: ((PHStyle for: #removeFieldButton)
					color: #FFF;
					yourself);
			add: ((PHStyle for: #removeFieldButton state: #hover)
					color: #'777';
					yourself)).
	
	self 
		withPadding;
		addStyleClass: #withPadding;
		updateFields;
		initializeAddButton.
		