*Home-UI
handleDroppedItem: anItem event: anEvent
	| file |
	self saveFields.
	file := anItem value.
	(MIMEDocument guessTypeFromName: anItem name) = 'text/plain' 
		ifFalse: [ file binary ]. 
	mailMessage addAttachmentFrom: file withName: anItem name.
	self changed: #messageText. 
	
	"(ExternalDropHandler lookupExternalDropHandler: anItem)
		ifNotNil: [:handler | handler handle: anItem in: self dropEvent: anEvent]."