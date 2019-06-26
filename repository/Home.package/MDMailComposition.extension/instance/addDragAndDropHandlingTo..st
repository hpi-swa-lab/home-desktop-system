*Home-UI
addDragAndDropHandlingTo: aWindowSpec
	^ aWindowSpec dropFileAccept: #wantsDropFiles:;
		dropFile: #handleDropFiles:;
		yourself. 