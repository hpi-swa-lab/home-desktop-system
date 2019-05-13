data integrity
serializeToFile

	<rackOperationLabel: 'serialize to file' inContextMenus: true>

	| ston fileName fileStream |
	ston := STON toString: self.
	fileName := FileSaverDialog openOn: FileDirectory default.
	fileName ifNil: [^Beeper beep].
	fileStream := StandardFileStream newFileNamed: fileName.
	fileStream nextPutAll: ston.
	fileStream close.