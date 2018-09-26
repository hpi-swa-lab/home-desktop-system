styles
windowStyles

	| baseColor |
	baseColor := Color fromString: '#EFEFEF'.
	
	(self for: #window)
		backgroundColor: baseColor;
		color: #'000';
		border: 1 color: (baseColor adjustBrightness: -0.3);
		spacing: ProportionalSplitterMorph gripThickness;
		padding: ProportionalSplitterMorph gripThickness.
		
	(self for: #windowHeader)
		spacing: 6;
		padding: (Rectangle left: 2 right: 2 top: 2 bottom: ProportionalSplitterMorph gripThickness).
	
	(self for: #dialogBody)
		spacing: 8;
		padding: 8.
	
	(self for: #dialog asStyle > #windowHeader)
		backgroundColor: (Color r: 0.658 g: 0.678 b: 0.78);
		padding: 8;
		color: (Color r: 0.658 g: 0.678 b: 0.78).
	
	(self for: #(window dialog))
		padding: 0.
	
	(self for: #(windowCloseButton))
		icon: #iconTimes_circle;
		color: #eb5759.
	(self for: #windowExpandButton asStyle, #windowUnexpandButton)
		icon: #iconPlus_circle;
		color: #'569e32'.
	(self for: #(windowMenuButton))
		icon: #iconChevron_circle_down;
		color: #'3c6fb5'.
	(self for: #windowCollapseButton asStyle, #windowUncollapseButton)
		icon: #iconMinus_circle;
		color: #'f18612'