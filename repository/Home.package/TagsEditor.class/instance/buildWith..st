as yet unclassified
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new.
	windowSpec children add: ((self buildFormElementWith: aBuilder)
		frame: (0@0 corner: 1@1);
		yourself).
	
	^ aBuilder build: windowSpec
	
	
	