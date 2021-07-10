*Home-Core
externalTransportRepresentation

	| representations name |
	name := self swaSchemaFileName , '.bib'.
	representations := Dictionary new
		at: name put: (HomeExternalTransportRepresentation newForFileName: name andContent: self asSwaBibtexString readStream);
		yourself.
		
	(self has: #file) ifTrue: [ | aFile |
		aFile := (FileStream fileNamed: self externalFileName).
		representations at: aFile localName put: (HomeExternalTransportRepresentation newForFileName: aFile localName andContent: aFile).].
	
	^ representations