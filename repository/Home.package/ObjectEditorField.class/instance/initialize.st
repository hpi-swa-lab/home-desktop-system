initialize-release
initialize

	super initialize.
	
	self addStyleClass: #objectEditorField.
	
	self addFallbackStyles: (PHStyleProvider new
		add: ((PHStyle for: #objectEditorField state: #hover)
					border: 1 color: #'aaa';
					yourself);
		add: ((PHStyle for: #objectEditorField asStyle > #column)
				spacing: 5;
				yourself);
		yourself)