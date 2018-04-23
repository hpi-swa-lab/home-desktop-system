as yet unclassified
buildFormElementsWith: aBuilder

	| formPanel |
	
	formPanel := aBuilder pluggablePanelSpec new
		children: OrderedCollection new;
		layout: #proportional;
		yourself.
	
	formPanel children add: (aBuilder pluggableListSpec new
		model: self;
		list: #originals;
		getIndex: #selectedOriginalIndex;
		setIndex: #selectedOriginalIndex:;
		frame: (LayoutFrame fractions: (0@0 corner: 0.4@1));
		yourself).
		
	formPanel children add: (aBuilder pluggableListSpec new
		model: self;
		list: #listOfDuplicates;
		getIndex: #selectedDuplicateIndex;
		setIndex: #selectedDuplicateIndex:;
		dragItem: #dragDuplicate:;
		doubleClick: #doubleClickOnDuplicate;
		frame: (LayoutFrame fractions: (0.4@0 corner: 1@1));
		yourself).
		
	^ formPanel