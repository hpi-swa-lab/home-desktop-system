*Home-UI
buildFullWith: builder
	| windowSpec listSpec textSpec |
	windowSpec := builder pluggableWindowSpec new
		model: self;
		label: 'Debugger';
		children: OrderedCollection new.

	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self;
		list: #contextStackList; 
		getIndex: #contextStackIndex; 
		setIndex: #toggleContextStackIndex:; 
		menu: #contextStackMenu:shifted:; 
		icon: #messageIconAt:;
		helpItem: #messageHelpAt:;
		keyPress: #contextStackKey:from:;
		frame: (0@0 corner: 1@0.22).
	windowSpec children add: listSpec.


	textSpec := self buildCodePaneWith: builder.
	textSpec frame: (0@0.22corner: 1@0.8).
	windowSpec children add: textSpec.

	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self receiverInspector;
		list: #fieldList; 
		getIndex: #selectionIndex; 
		setIndex: #toggleIndex:; 
		menu: #fieldListMenu:; 
		keyPress: #inspectorKey:from:;
		frame: (0@0.8 corner: 0.2@1);
		dragItem: #dragFromFieldList:; 
		help: 'Receiver''s\Instance\Variables' withCRs.
	windowSpec children add: listSpec.

	textSpec := builder pluggableTextSpec new.
	textSpec 
		model: self receiverInspector;
		getText: #contents; 
		setText: #accept:; 
		help: '<- Select receiver''s field' translated;
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:;
		frame: (0.2@0.8 corner: 0.5@1).
	windowSpec children add: textSpec.

	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self contextVariablesInspector;
		list: #fieldList; 
		getIndex: #selectionIndex; 
		setIndex: #toggleIndex:; 
		menu: #fieldListMenu:; 
		keyPress: #inspectorKey:from:;
		frame: (0.5@0.8 corner: 0.7@1);
		dragItem: #dragFromFieldList:; 
		help: 'Other\Context\Bindings' withCRs.
	windowSpec children add: listSpec.

	textSpec := builder pluggableTextSpec new.
	textSpec 
		model: self contextVariablesInspector;
		getText: #contents; 
		setText: #accept:; 
		help: '<- Select context''s field' translated;
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:;
		frame: (0.7@0.8 corner: 1@1).
	windowSpec children add: textSpec.

	^builder build: windowSpec