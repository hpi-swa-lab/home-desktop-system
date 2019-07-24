instance creation
fromMethod: aMethod

	^ self value: ([aMethod
					valueWithReceiver: nil
					arguments: #()]
						ifError: [nil])