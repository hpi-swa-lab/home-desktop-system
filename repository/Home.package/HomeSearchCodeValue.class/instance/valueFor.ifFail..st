evaluating
valueFor: anObject ifFail: exceptionBlock

	^ [self method
		valueWithReceiver: anObject
		arguments: {}]
			on: Error
			do: exceptionBlock