*Home-Core
externalTransportRepresentation

	| representations |
	representations := Dictionary new
		at: self swaSchemaFileName , '.bib' put: self asSwaBibtexString readStream;
		yourself.
		
	(self has: #file) ifTrue: [ | aFile |
		aFile := (FileDirectory default fileNamed: self externalFileName).
		representations at: aFile localName put: aFile.].
	
	^ representations