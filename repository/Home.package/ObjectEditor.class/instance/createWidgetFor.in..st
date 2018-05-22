private
createWidgetFor: aWrapper in: widgetColumn
	
	widgetColumn when: #objectDropped evaluate: [:obj |
		self updateWidgetColumn: widgetColumn for: aWrapper withValue: obj].
	widgetColumn add: (aWrapper object objectEditingWidgetFor: aWrapper in: self).