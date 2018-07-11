printing
printOn: aStream

	(self has: #explicitName) ifTrue: [^ aStream << self explicitName].
	
	(self ?? #participants) ifNotEmpty: [
		(self ?? #participants) allButLast do: [:m |
			m printOn: aStream. aStream << ', ' ].
		(self ?? #participants) last printOn: aStream]