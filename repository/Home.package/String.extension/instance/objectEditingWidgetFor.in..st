*Home-UI
objectEditingWidgetFor: aWrapper in: anObjectEditor

	^ PHTextArea new
		text: self;
		editable: true;
		multiLine: (self size > 50);
		when: #changedWithContent evaluate: [:text |
			aWrapper changeValueTo: text];		
		yourself