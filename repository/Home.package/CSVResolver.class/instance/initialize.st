initialize-release
initialize

	super initialize.
	
	self 
		fileHasHeaderColumn: false;
		fieldsConfiguration: OrderedCollection new;
		labelFieldName: nil.
	
	cache := OrderedCollection new.