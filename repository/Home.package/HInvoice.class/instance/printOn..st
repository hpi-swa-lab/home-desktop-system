as yet unclassified
printOn: aStream

	aStream << 'Invoice "' << self title << '" '.
	self total printOn: aStream.
	aStream << ' ' << '(' << (self paid ifTrue: ['paid'] ifFalse: ['unpaid']) << ')'