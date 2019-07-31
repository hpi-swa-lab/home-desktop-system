*Home-UI
bodyTextFormatted
	"Answer a version of the text in my body suitable for display.  This will parse multipart forms, decode HTML, and other such things"
	self isMultipart ifTrue: [
		self isMultipartAlternative ifTrue: [
			"it's multipart/alternative.  search for a part that we can display, biasing towards simpler formats"
			#('text/plain' 'text/html') do: [ :format |
				self parts do: [ :part |
					part contentType = format ifTrue: [ ^ part bodyTextFormatted ] ] ].

			"couldn't find a desirable part to display; just display the first part"
			^self parts first bodyTextFormatted ].

		"not alternative parts.  put something for each part"
		^Text streamContents: [ :str |
			self parts do: [ :part |
				(((#('text' 'multipart') includes: part mainType) or: 
					[ part contentType = 'message/rfc822']) and:[(part fieldNamed: 'content-disposition' ifAbsent: [nil]) isNil])
				ifTrue: [
					"try to inline the message part"
					str nextPutAll: part bodyTextFormatted. ]
				ifFalse: [ 
					|descript |
					str cr.
					descript := part name ifNil: [ 'attachment' ].
					str nextPutAll: (Text string: '[', descript, ']'  attribute: (TextMessageLink message: part)). ] ] ]. ].


	"check for HTML"
	(self contentType = 'text/html') ifTrue: [
		Smalltalk at: #HtmlParser ifPresent: [ :htmlParser |
			^(htmlParser parse: (ReadStream on: self content)) formattedText].
		Smalltalk at: #HtmlReadWriter ifPresent: [:html |
			^ self content asTextFromHtml]
	].

	"check for an embedded message"
	self contentType = 'message/rfc822' ifTrue: [
		^(MailMessage from: self content) formattedText ].

	"nothing special--just return the text"
	^self content.
