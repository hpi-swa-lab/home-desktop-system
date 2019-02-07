resolving
answer: aMessage for: anUrl
	"Answers a collection of information"

	| selector |
	selector := aMessage selector = #label ifTrue: [self labelFieldName ifNotNil: [:l | l asSymbol] ifNil: [#label]] ifFalse: [aMessage selector].
	^ {(self lookup: anUrl) at: selector}.