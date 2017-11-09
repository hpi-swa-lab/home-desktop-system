as yet unclassified
buildWith: builder

	^ (builder build: (builder pluggableInputFieldSpec new
		model: self;
		getText: #searchTerm;
		setText: #smartSearch:in:;
		editText: #searchTermSilently:;
		menu: #menu:shifted:;
		selection: #selection;
		indicateUnacceptedChanges: false;
		help: 'Search for object' translated))
			name: #objectSearchBar;
			wantsFrameAdornments: false;
			yourself