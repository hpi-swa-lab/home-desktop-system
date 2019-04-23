printing
printOn: aStream

	self amount printFractionAsDecimalOn: aStream.
	aStream << ' ' << self currency.
	^ aStream