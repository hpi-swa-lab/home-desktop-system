as yet unclassified
updateVisuals

	| position fill |
	position := Display boundingBox.
	position := position top: (position height / 2) rounded.

	fill := GradientFillStyle ramp: {0.0 -> (Color black alpha: 0.0) . 0.5 -> (Color moss muchDarker alpha: 0.9) . }.
	fill origin: self topLeft.
	fill direction: 0 @ self bounds extent y.
	fill normal: self bounds extent x @ 0.
	fill radial: false.

	self 
		fillStyle: fill;
		bounds: position.
	
	self 
		changeTableLayout;
		listDirection: #horizontal;
		layoutInset: ((Display width * 0.05) max: 10);
		cellInset: 20.
