sendingMail-workaround
doSendMail

	"The doSendMail of MDMailComposition does not work in the image this was implemented in, so the same way that was already used in HMDMailComposition is also used here. The line of the error is the last, 'self selectedProfile storeSentMessage: mailMessage.'
	The recipients are determined in the same way as in MDMailComposition though, so in a system where that works this method can be removed"
		
	| recipients |
	recipients := (mailMessage to findTokens: ',') , 
					(mailMessage cc findTokens: ',') , 
					(mailMessage bcc findTokens: ',').
	recipients := recipients asSet asOrderedCollection collect: [:r | r withBlanksTrimmed].

	(SMTPClient openOnHostNamed: self smtpServer port: self smtpServerPort)
		user: self smtpUser;
		password: self smtpPassword;
		login;
		mailFrom: mailMessage from
		to: recipients
		text: mailMessage asSendableText