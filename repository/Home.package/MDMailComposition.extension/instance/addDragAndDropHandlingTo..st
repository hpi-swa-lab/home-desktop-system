*Home-DnD
addDragAndDropHandlingTo: aWindowSpec
	^ aWindowSpec dropFileAccept: #wantsDropFiles:;
		dropFile: #handleDropFiles:;
		yourself. 