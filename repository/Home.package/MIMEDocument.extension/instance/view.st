*Home-DnD
view
	
	self containsViewableImage
		ifTrue: [^ self viewImage].
		
	self isPlaintext 
		ifTrue: [^(StringHolder new 
			contents: self bodyTextFormatted; yourself)
			openLabel: (self name ifNil: ['(a message part)'])].
	
	OSProcess openFileWithPath: self name.