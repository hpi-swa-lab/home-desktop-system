as yet unclassified
doSendMail

	self recipientObject
		ifNil: [super doSendMail]
		ifNotNil: [
			(SMTPClient openOnHostNamed: self smtpServer port: self smtpServerPort)
				user: self smtpUser;
				password: self smtpPassword;
				login;
				mailFrom: mailMessage from
				to: {recipientObject emailAddress}
				text: mailMessage asSendableText]