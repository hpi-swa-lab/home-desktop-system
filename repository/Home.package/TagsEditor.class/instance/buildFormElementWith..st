as yet unclassified
buildFormElementWith: aBuilder

	| formPanel tagInputHeight |
	
	tagInputHeight := Preferences standardDefaultTextFont height * 1.75.
	
	formPanel := aBuilder pluggablePanelSpec new
		children: OrderedCollection new;
		layout: #proportional;
		yourself.
		
	formPanel children add: (aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #newTag;
		setText: #acceptNewTag:;
		frame: (LayoutFrame fractions: (0@0 corner: 1@0) offsets: (0@0 corner: 0@tagInputHeight));
		help: 'Enter new tag';
		yourself).	
		
	formPanel children add: (aBuilder pluggableListSpec new
		model: self;
		list: #listOfTags;
		getIndex: #selectedTagIndex;
		setIndex: #selectedTagIndex:;
		menu: #tagMenu:;
		keyPress: #keyPressed:;
		frame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0@tagInputHeight corner: 0@0));
		yourself).
	
			
	^ formPanel
	
		
	