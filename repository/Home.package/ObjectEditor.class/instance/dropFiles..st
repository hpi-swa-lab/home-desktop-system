drag and drop
dropFiles: anEvent
	"lent from PasteUpMorph"
	| numFiles |
	numFiles := anEvent contents.
	1 to: numFiles do: [ :i |
		(FileDirectory requestDropDirectory: i) 
			ifNotNil: [:directory | self handleDroppedItem: directory event: anEvent]
			ifNil: [(FileStream requestDropStream: i) ifNotNil: [:stream |
				[self handleDroppedItem: stream event: anEvent] ensure: [stream close]]]].