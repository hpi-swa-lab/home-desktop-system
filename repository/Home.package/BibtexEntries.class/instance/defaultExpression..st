as yet unclassified
defaultExpression: aNode

	^ aNode children gather: [:c | | result |
		result := self value: c.
		result isCollection
			ifTrue: [result]
			ifFalse: [{result}]] 