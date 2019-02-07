resolving
answer: aMessage for: anUrl
	"Answers a collection of information"

	| result |
	(aMessage selector = #label and: [anUrl includesSubstring: 'home_timeline']) ifTrue: [^ {'Home timeline'}].
	(aMessage selector = #label and: [anUrl includesSubstring: 'user_timeline']) ifTrue: [^ {'User timeline'}]. 
	
	result := self retrieveApiObjectFor: anUrl.
	
	^ {(aMessage selector isAllDigits
		ifTrue: [result at: aMessage selector asNumber]
		ifFalse: [aMessage sendTo: result]) asSurrogate}