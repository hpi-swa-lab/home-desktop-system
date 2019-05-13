accessing
name

	^ self contents asString
		ifEmpty: [super name]
		ifNotEmpty: [:contents | contents lines first]