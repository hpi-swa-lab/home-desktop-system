private
widgetFor: aWrapper

	| labelColumn widgetColumn |
	
	labelColumn := (PHPage row
			expand: false;
			align: #(center start);
			maxSize: 150@(-1);
			yourself).
	widgetColumn := (ObjectEditorField column
			expand: true;
			align: #(fill top);
			yourself).
	
	self createWidgetLabelFor: aWrapper in: labelColumn nextTo: widgetColumn.		
	self createWidgetFor: aWrapper in: widgetColumn.
			
	^ {labelColumn . widgetColumn}