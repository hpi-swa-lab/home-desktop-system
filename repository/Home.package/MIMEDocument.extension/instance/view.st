*Home-UI
view
	
	| path |
	self containsViewableImage
		ifTrue: [^ self viewImage].
		
	self isPlaintext ifTrue: [(StringHolder new contents: self bodyTextFormatted;
		 yourself)
		openLabel: (self name ifNil: ['(a message part)'])].
	
	path := self name.
	Smalltalk platformName = 'Win32' ifTrue: [
		OSProcess command: 'explorer ' , (path replaceStrings: {'/' -> '\'} )].
	Smalltalk platformName = 'Mac OS' ifTrue: [
		OSProcess command: 'open ' , path].
	Smalltalk platformName = 'unix' ifTrue: [
		OSProcess command: 'xdg-open ' , path].