private
widgetLabelFrom: aString

	| parts |
	parts := self splitIdentifier: aString.
	^ (parts joinSeparatedBy: String space) capitalized