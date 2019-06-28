as yet unclassified
addDomainObjectBack: anObject

	self text: (self text copyReplaceFrom: self text size to: self text size with: (self createInTextItemFor: anObject))