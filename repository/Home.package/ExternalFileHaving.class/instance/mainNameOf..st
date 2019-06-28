testing
mainNameOf: object
	^ (((self fileAttribute: object) exampleValue splitBy: '/') last splitBy: '\') last