as yet unclassified
exactlyOnceWants: aSymbol

	^ self new
		wantedObjectAttribute: aSymbol;
		maxNumberOfItems: 1;
		makeItemsUnclosable