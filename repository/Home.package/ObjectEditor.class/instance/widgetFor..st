private
widgetFor: aWrapper

	| label widget labelColumn widgetColumn removeIcon |
	
	labelColumn := (PHPage row
			expand: false;
			align: #(center start);
			maxSize: 150@(-1);
			yourself).
	widgetColumn := (ObjectEditorField column
			expand: true;
			align: #(fill top);
			yourself).
			
	
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
	
	
	widgetColumn when: #objectDropped evaluate: [:obj |
		aWrapper changeValueTo: obj.
		widgetColumn removeAllMorphs.
		"The following is currently hacked as the itemName could be different... --pre"
		widgetColumn add: ((aWrapper refresh; object) objectEditingWidgetFor: aWrapper in: self)].
	widget := aWrapper object objectEditingWidgetFor: aWrapper in: self.
	widgetColumn add: widget.
			
	^ {labelColumn . widgetColumn}