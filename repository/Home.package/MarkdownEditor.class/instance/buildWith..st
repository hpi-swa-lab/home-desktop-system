building
buildWith: aBuilder
	
	| windowSpec |
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		children: {self buildEditorTextMorphWith: aBuilder};
		label: 'Markdown Editor';
		yourself.
	^ aBuilder build: windowSpec
	