toolbuilder
buildWith: aBuilder

	| windowSpec sourceStringFraction setterSelector |
	windowSpec := aBuilder pluggableDialogSpec new
		model: self;
		label: self formTitle;
		children: OrderedCollection new;
		buttons: OrderedCollection new.
		
	sourceStringFraction := 0.	
		
	self sourceString ifNotNil: [
		sourceStringFraction := 0.3.
		windowSpec children add: (
			aBuilder pluggableButtonSpec new
				model: self;
				label: 'Discard';
				action: #discardInstanceToEdit;
				frame: (LayoutFrame new
					leftFraction: 0 offset: 0;
					topFraction: 0 offset: 0;
					rightFraction: 1 offset: 0;
					bottomFraction: 0.1 offset: 0);
				yourself).
		
		windowSpec children add: (
			aBuilder pluggableTextSpec new
				model: self;
				getText: #sourceString;
				frame: (LayoutFrame new
					leftFraction: 0 offset: 0;
					topFraction: 0.1 offset: 0;
					rightFraction: 1 offset: 0;
					bottomFraction: sourceStringFraction offset: 0);
				yourself)].	
	
	self instanceToEdit class instVarNames withIndexDo: [:instVarName :index |
		setterSelector := (instVarName , $:) asSymbol.
		windowSpec children add: (aBuilder pluggableInputFieldSpec new
			model: (HomeFormField new target: self instanceToEdit; yourself);
			indicateUnacceptedChanges: false;
			getText: instVarName asSymbol;
			setText: setterSelector;
			editText: setterSelector;
			frame: (LayoutFrame new
				leftFraction: 0 offset: 0;
				topFraction: sourceStringFraction offset: (index - 1) * self lineHeight;
				rightFraction: 1 offset: 0;
				bottomFraction: sourceStringFraction offset: index * self lineHeight);
			help: instVarName asString;
			yourself)].
		
	windowSpec buttons add: (
		aBuilder pluggableButtonSpec new
			model: self; 
			label: 'Close';
			action: #close).	
		
	windowSpec extent: 400 @ ((400 * sourceStringFraction) + (windowSpec children size * self lineHeight * 1.5)).
		
	^ aBuilder build: windowSpec