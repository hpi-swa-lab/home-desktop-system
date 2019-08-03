*Home-DnD
containsPlainText
	| type |
	type := MIMEDocument contentType: (MIMEDocument guessTypeFromName: self name)  content: ''.
	^type isPlaintext.