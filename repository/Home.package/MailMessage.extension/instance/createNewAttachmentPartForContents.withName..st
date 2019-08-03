*Home-DnD
createNewAttachmentPartForContents: contents withName: aName
	 | contentType |
	contentType := (contents isExternalTransportRepresentation) ifTrue: [contents mimetype] ifFalse: [MIMEDocument guessTypeFromName: aName]. 

	^(MIMEDocument contentType: contentType content: '')
		setField: 'content-transfer-encoding' toString: 'base64';
		setField: 'content-disposition' toString: 'attachment'.