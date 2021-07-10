*Home-DnD
openRackStandardMorph
	self containsPlainText ifTrue: [^self edit].
	self containsViewableImage ifTrue: [^Form openImageInWindow: self name]. 
	^OSProcess openFileWithPath: self name.