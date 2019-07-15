operations
interactiveSendMailToAll: objects

	<collectionOperationLabel: 'write email to all' inContextMenus: true>
	
	MailSender sendMessage: (MailMessage new
		to:  ((((objects collect: [:o | self emailAttribute: o]) reject: #isNil) collect: #value) asArray joinSeparatedBy: ',');
		yourself)