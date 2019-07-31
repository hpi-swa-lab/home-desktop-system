*Home-DnD
addAttachment: stream named: attachmentName
	"Delete after 5.2 release"

	(stream respondsTo: #makeBinaryIfNotPlainText) ifTrue:[stream makeBinaryIfNotPlainText] ifFalse: [stream binary].
	mailMessage
		addAttachmentFrom: stream
		withName: attachmentName