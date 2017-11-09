as yet unclassified
doesNotUnderstand: aMessage

	^ self target perform: aMessage selector withArguments: 
		((aMessage arguments 
			collect: [:a | a isText ifTrue: [a asString] ifFalse: [a]])
			collect: [:a | a isString ifTrue: [a withBlanksTrimmed] ifFalse: [a]])