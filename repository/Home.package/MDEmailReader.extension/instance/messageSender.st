*Home
messageSender

	| senders sendersText |
	senders := mailMessage from.
	sendersText := mailMessage from asText.
	(MailAddressParser addressesIn: mailMessage from asWideString) do: [:address | | start end block |
		start := senders findString: address.
		end := (start + address size) - 1.
		block := [(soup search: ((Person all search: address) ifEmpty: [#('')] ifNotEmptyDo: [:c | c first]) first printString) explore].
		sendersText addAttribute: (PluggableTextAttribute evalBlock: block) from: start to: end ].
	
	^ sendersText