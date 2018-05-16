*Home-UI
objectEditingWidgetFor: aWrapper in: anObjectEditor

	^ PHTextArea new
		text: self stringRepresentation;
		editable: true;
		when: #confirmed evaluate: [:text | | newNumber |
			newNumber := Number readFrom: text asString.
			newNumber isNumber ifTrue: [aWrapper changeValueTo: newNumber]];		
		yourself