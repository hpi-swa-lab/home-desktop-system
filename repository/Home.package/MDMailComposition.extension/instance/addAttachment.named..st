*Home-DnD
addAttachment: streamOrTransportRepresentation named: attachmentName
	"Delete after 5.2 release"
	streamOrTransportRepresentation makeBinaryIfNotPlainText.
	mailMessage
		addAttachmentFrom: streamOrTransportRepresentation
		withName: attachmentName