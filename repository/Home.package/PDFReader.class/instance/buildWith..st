as yet unclassified
buildWith: aBuilder

	| window view |
	window := aBuilder pluggableWindowSpec new
		children: OrderedCollection new;
		model: self;
		yourself.
	
	view := aBuilder pluggableScrollPaneSpec new
		morph: self initialViewOfPage;
		model: self;
		hScrollBarPolicy: #whenNeeded;
		vScrollBarPolicy: #whenNeeded;
		frame: (0@0 corner: 1@1);
		yourself.
		
	window children add: view.
	
	^ aBuilder build: window