helpers
compile: methodSourceWithoutHeaderOrArgs

	^ (Parser new
		parse: methodSourceWithoutHeaderOrArgs
		class: nil class
		noPattern: true
		notifying: nil
		ifFail: [self error: 'Failed to compile dynamic term']) generate