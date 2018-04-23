toolbuilder
buildFormElementsWith: aBuilder

	| formPanel |
	
	formPanel := aBuilder pluggablePanelSpec new
		children: OrderedCollection new;
		layout: #proportional;
		yourself.
	
	formPanel children add: (aBuilder pluggableListSpec new
		model: self;
		list: #targetAsList;
		getIndex: #targetIsSelected;
		setIndex: #targetSelect:;
		menu: #targetMenu:;
		dropAccept: #targetDropAccept:;
		dropItem: #targetDrop:;
		frame: (LayoutFrame fractions: (0@0 corner: 1@0.3));
		yourself).
		
	formPanel children add: (aBuilder pluggableListSpec new
		model: self;
		list: #listOfObjectsToBeMerged;
		getIndex: #selectedObjectToBeMerged;
		setIndex: #selectedObjectToBeMerged:;
		menu: #objectToBeMergedObject;
		dropAccept: #objectsToBeMergedDropAccept:;
		dropItem: #objectsToBeMergedDrop:;
		frame: (LayoutFrame fractions: (0@0.3 corner: 1@1));
		yourself).
		
	^ formPanel