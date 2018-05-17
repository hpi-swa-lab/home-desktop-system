initialize-release
addStyles

	self addApplicationStyles: (PHStyleProvider new
			add: ((PHStyle for: #fieldList)
					spacing: 5);
			add: ((PHStyle for: #removeFieldButton)
					color: #FFF;
					yourself);
			add: ((PHStyle for: #removeFieldButton state: #hover)
					color: #'777';
					yourself);
			add: ((PHStyle for: #objectEditor)
					backgroundColor: Color white;
					yourself)
			yourself).
			
		