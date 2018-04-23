as yet unclassified
newOn: anUriOrString

	| anUri |
	anUri := anUriOrString asURI.
	^ self new
		uri: anUri;
		yourself