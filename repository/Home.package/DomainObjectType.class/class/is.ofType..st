types
is: obj ofType: typeSymbol
	self allSubclassesDo: [:typeClass |
		(typeClass name asSymbol = typeSymbol asSymbol)
			ifTrue: [^ typeClass instance fits: obj]
	].
	^ false