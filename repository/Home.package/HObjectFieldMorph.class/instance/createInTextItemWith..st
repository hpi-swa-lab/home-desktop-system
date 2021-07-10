objectItem-creation
createInTextItemWith: anHObjectItem

	^ Text
		string: (String value: 1) 
		attribute: (TextAnchor new anchoredMorph: anHObjectItem)