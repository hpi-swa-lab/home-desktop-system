*Home-DnD
handleDroppedItem: anItem event: anEvent
	| file |
	self saveFields.
	file := anItem value.
	file makeBinaryIfNotPlainText.
	mailMessage addAttachmentFrom: file withName: anItem name.
	self changed: #messageText. 
	
	"(ExternalDropHandler lookupExternalDropHandler: anItem)
		ifNotNil: [:handler | handler handle: anItem in: self dropEvent: anEvent]."