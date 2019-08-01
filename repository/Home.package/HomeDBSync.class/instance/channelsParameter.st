channel
channelsParameter

	^ (self channels)
		ifNotNil: ['?channels=', (String streamContents: [:s | self channels asStringOn: s delimiter: ',']) ]
		ifNil: ['']