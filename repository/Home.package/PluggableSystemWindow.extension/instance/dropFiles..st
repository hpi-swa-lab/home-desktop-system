*Home-UI
dropFiles: anEvent
	self handleDroppedFileSelector ifNotNil: [self model perform: handleDroppedFileSelector with: anEvent].