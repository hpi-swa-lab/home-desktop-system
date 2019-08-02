*Home-DnD
addAttachmentFrom: contents withName: aName
	"add an attachment, encoding with base64.  aName is the optional filename"
	| newPart |
	self makeMultipart.
	
	newPart := self createNewAttachmentPartForContents: contents withName: aName.
	
	aName ifNotNil: [
		self addMetaFieldsToPart: newPart withName: aName].
	
	newPart content: contents upToEnd.
	self body addPart: newPart.