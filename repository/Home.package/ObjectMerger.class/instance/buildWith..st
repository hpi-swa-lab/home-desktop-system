toolbuilder
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new.
		
	windowSpec children add: ((self buildButtonsWith: aBuilder)
		frame: (0@0 corner: 1@0.15);
		yourself).
		
	windowSpec children add: ((self buildFormElementsWith: aBuilder)
		frame: (0@0.15 corner: 1@1);
		yourself).
	
	^ aBuilder build: windowSpec
	
	
	