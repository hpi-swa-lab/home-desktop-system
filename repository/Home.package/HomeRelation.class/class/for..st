instance creation
for: aSelector

	| candidates normalizedSelector |
	normalizedSelector := aSelector copyWithout: $:.
	candidates := self relations select: [:r | r identifier = normalizedSelector ].
	candidates size > 1 ifTrue: [
		self error: 'Something went wrong there is either no or multiple relations for the selector ' , aSelector].
	candidates ifEmpty: [
		^ self new
			receiverCardinality: 1;
			targetCardinality: 1;
			identifier: (aSelector copyWithout: $:);		
			yourself].
	^ candidates first