Home-UI
objectEditorPrintString

	^ String streamContents: [:aStream |
		#(label text title fullName name) 
			detect: [:nameMessage | 
				(self resolve: (Message selector: nameMessage)) notEmpty]
			ifFound: [:nameMessage | | nameValue |
				nameValue := self perform: nameMessage.
				aStream nextPutAll: nameValue asString]
			ifNone: [aStream nextPutAll: self uri pathComponents last; nextPutAll: ' (s)']]