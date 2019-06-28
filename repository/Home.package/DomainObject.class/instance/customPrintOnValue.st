printing
customPrintOnValue
	"returning the value of #printOn:, if it is overridden"
	"Required for compatibility with DomainObject subclasses overriding the printOn: - method"
	self class withAllSubclassesDo: [:class |
		(class = DomainObject) ifTrue: [^ nil].
		(class methodDict includesKey: #printOn:) ifTrue: [^ String streamContents: [:s | self printOn: s]].
	].
	^ nil