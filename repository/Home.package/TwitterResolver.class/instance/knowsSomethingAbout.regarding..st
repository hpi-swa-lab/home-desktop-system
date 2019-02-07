resolving
knowsSomethingAbout: anUri regarding: aMessage

	| object |
	^ (self knowsSomethingAbout: anUri) and: [
		object := self retrieveApiObjectFor: anUri.
		aMessage selector isAllDigits
			ifTrue: [aMessage selector asNumber < object size]
			ifFalse: [(object respondsTo: aMessage selector) or: [
						aMessage selector = #label and: [anUri includesSubstring: 'timeline']]] ]