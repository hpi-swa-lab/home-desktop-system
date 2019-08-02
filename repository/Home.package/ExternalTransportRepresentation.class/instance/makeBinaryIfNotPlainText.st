accessing
makeBinaryIfNotPlainText
	| type |
	type := MIMEDocument contentType: self mimetype content: ''. 
	(type isPlaintext) ifFalse: [self contents binary].