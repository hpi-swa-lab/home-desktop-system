instance creation
newOn: anUriOrString

	| anUri |
	anUri := anUriOrString.
	^ self new
		uri: anUri;
		yourself