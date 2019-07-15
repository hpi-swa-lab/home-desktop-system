as yet unclassified
createInTextItemFor: anObject

	^ Text
		string: (String value: 1) 
		attribute: (TextAnchor new anchoredMorph: ((HObjectItem for: self with: anObject)
			changeTableLayout;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			balloonText: 'right click me to change what I display'))