instance creation
fromMethod: aMethod

	^ self target: ([aMethod
					valueWithReceiver: nil
					arguments: #()]
						ifError: [nil])