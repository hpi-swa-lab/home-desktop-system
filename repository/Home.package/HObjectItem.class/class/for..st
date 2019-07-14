as yet unclassified
for: aParentWidget

	self flag: #todo. "how is the initial displayedKey set? Does Erik's stuff make this obsolete?"

	^ self new
		privateParentWidget: aParentWidget;
		displayedKey: aParentWidget wantedObjectAttributeKey