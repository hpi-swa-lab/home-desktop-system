as yet unclassified
createInTextItemFor: anObject

	^ Text
		string: (String value: 1) 
		attribute: (TextAnchor new anchoredMorph: (HObjectItem new
			changeTableLayout;
			hResizing: #rigid;
			vResizing: #rigid;
			extent: 10@10;
			color: Color red;
			balloonText: 'right click me to change what I display'))