private
updateWidgetColumn: widgetColumn for: aWrapper withValue: aNewValue

	aWrapper changeValueTo: aNewValue.
	widgetColumn removeAllMorphs.
	"The following is currently hacked as the itemName could be different... --pre"
	widgetColumn add: ((aWrapper refresh; object) objectEditingWidgetFor: aWrapper in: self)