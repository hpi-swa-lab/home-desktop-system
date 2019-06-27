*Home-UI
buildWith: aBuilder

	| windowSpec detailsPanelSpec textSpec |

	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new.
	self addDragAndDropHandlingTo: windowSpec.
		
	windowSpec children add: (self buildButtonBarSpecWith: aBuilder).
		
	detailsPanelSpec := aBuilder pluggablePanelSpec new
		children: OrderedCollection new;
		layout: #vertical;
		yourself.
	windowSpec children add: detailsPanelSpec.
	
	self createDetailsFieldsIn: detailsPanelSpec by: aBuilder.
	
	detailsPanelSpec children: detailsPanelSpec children reversed.
	detailsPanelSpec frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: self buttonBarHeight;
			rightFraction: 1 offset: 0;
			bottomFraction: 0 offset: self buttonBarHeight + (detailsPanelSpec children size * self lineHeight)).
			
	textSpec := aBuilder pluggableTextSpec new
		model: self;
		indicateUnacceptedChanges: true;
		getText: #messageText;
		setText: #messageText:;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: self buttonBarHeight + (detailsPanelSpec children size * self lineHeight);
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0);
		yourself.	
	windowSpec children add: textSpec.
	
	^ aBuilder build: windowSpec