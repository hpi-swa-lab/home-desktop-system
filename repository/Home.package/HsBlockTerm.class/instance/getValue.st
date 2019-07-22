evaluating
getValue

	^ [self method
		valueWithReceiver: nil
		arguments: #()]
			ifError: [nil]