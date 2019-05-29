as yet unclassified
hideOrShowCloseButton

	self isClosable
		ifTrue: [self closeButton show]
		ifFalse: [self closeButton hide]