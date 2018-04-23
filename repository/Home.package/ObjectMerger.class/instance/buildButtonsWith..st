toolbuilder
buildButtonsWith: aBuilder

	| formPanel |
	
	formPanel := aBuilder pluggablePanelSpec new
		children: OrderedCollection new;
		layout: #horizontal;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0 offset: 0);
		yourself.
	
	formPanel children add: (aBuilder pluggableButtonSpec new
		model: self;
		label: 'Fill target with new data';
		action: #fillTarget;
		yourself).
		
	formPanel children add: (aBuilder pluggableButtonSpec new
		model: self;
		label: 'Become the instances';
		action: #becomeTheTarget;
		yourself).
		
	formPanel children add: (aBuilder pluggableButtonSpec new
		model: self;
		label: 'Reset';
		action: #resetForm;
		yourself).
		
	^ formPanel