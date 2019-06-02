operations
interactiveSendMailToAll: objects
	<collectionOperationLabel: 'write email to all' inContextMenus: true>
	| mails |
	mails := ((objects collect: [:o | self emailAttribute: o]) reject: #isNil) collect: #value.
	(mails includes: nil) ifTrue: [^ self].
	
	MailSender sendMessage: (MailMessage new
		to:  ((mails reject: #isNil) asArray joinSeparatedBy: ',');
		yourself)