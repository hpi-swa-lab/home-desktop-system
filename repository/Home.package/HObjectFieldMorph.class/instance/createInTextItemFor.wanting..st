as yet unclassified
createInTextItemFor: anObject wanting: aSymbol

	^ Text
		string: (String value: 1) 
		attribute: (TextAnchor new anchoredMorph: ((HObjectItem for: self with: anObject wanting: aSymbol)
			changeTableLayout;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			balloonText: 'right click me to change what I display'))