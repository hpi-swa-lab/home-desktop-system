toolbuilder
doSendMail

	(SMTPClient openOnHostNamed: self smtpServer port: self smtpServerPort)
		user: self smtpUser;
		password: self smtpPassword;
		login;
		mailFrom: mailMessage from
		to: ((self mailRecipientField getTextFromInnerMorphs splitBy: ' ') asSet remove: ''; yourself)
		text: mailMessage asSendableText