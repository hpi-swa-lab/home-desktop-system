as yet unclassified
addDomainObjectBack: anObject wanting: aSymbol

	"(self wantedObjectAttributeKey isNil not and: [(anObject respondsTo: self wantedObjectAttributeKey) not])
		ifTrue: [UIManager default inform: 'Does not have required attribute: ', self wantedObjectAttributeKey asString.
			^ self]."

	self text: (self text copyReplaceFrom: self text size + 1 to: self text size with: (self createInTextItemFor: anObject wanting: aSymbol))