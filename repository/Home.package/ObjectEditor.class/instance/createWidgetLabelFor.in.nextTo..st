private
createWidgetLabelFor: aWrapper in: labelColumn nextTo: widgetColumn

	| label  removeIcon insertNewObjectButton |
		
	label := (PHLabel bold: (self widgetLabelFrom: aWrapper itemName))
				expand: true;
				yourself.
	labelColumn add: label.
	removeIcon := (PHIconButton name: #iconClose) 
						addStyleClass: #removeFieldButton;
						align: #(right top);
						yourself.
	removeIcon when: #clicked evaluate: [
		(UIManager default confirm: 'Do you really want to remove ' , aWrapper itemName , '?')
			ifTrue: [
				aWrapper removeField. 
				labelColumn abandon.
				widgetColumn abandon. 
				self changed]].
	labelColumn add: removeIcon.
	insertNewObjectButton := (PHIconButton name: #iconAdjust)
		addStyleClass: #adjustFieldButton;
		align: #(right top);
		yourself. 
	labelColumn add: insertNewObjectButton.
	insertNewObjectButton when: #clicked evaluate: [ | obj |
		obj := self askForNewObject.
		obj ifNotNil: [self updateWidgetColumn: widgetColumn for: aWrapper withValue: obj]].