as yet unclassified
printOn: aStream

	aStream 
		<< self resultState
		<< ': '.
		
	self rules do: [:r | aStream << r description << ', ']