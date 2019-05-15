actions
defaultExpression: aNode

	Transcript showln: aNode ruleName.
	aNode children do: [:each | self value: each]