as yet unclassified
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Object Merger';
		children: OrderedCollection new.
		
	windowSpec children add: ((self buildFormElementsWith: aBuilder)
		frame: (0@0 corner: 1@1);
		yourself).
	
	^ aBuilder build: windowSpec