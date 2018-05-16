*Home-UI
objectEditingWidgetFor: aWrapper in: anObjectEditor

	^ PHCheckbox new
		checked: self;
		when: #toggled evaluate: [:aBoolean |
			aWrapper changeValueTo: aBoolean	];		
		yourself