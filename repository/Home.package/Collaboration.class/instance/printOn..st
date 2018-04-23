as yet unclassified
printOn: aStream

	(self has: #explicitName) ifTrue: [^ aStream << self explicitName].
	
	self members allButLast do: [:m |
		m printOn: aStream. aStream << ', ' ].
	self members last printOn: aStream.