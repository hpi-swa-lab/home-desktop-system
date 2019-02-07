resolving
knowsSomethingAbout: anUri regarding: aMessage

	(self knowsSomethingAbout: anUri) ifFalse: [^ false].
	aMessage selector = #label ifTrue: [^ true].
	^ ((self lookup: anUri) keys collect: [:k | k asLowercase]) includes: aMessage selector asLowercase