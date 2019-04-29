as yet unclassified
printOn: aStream

	^ aStream << (self type asString, ' from ', self departureLocation asString, ' to ', self arrivalLocation asString)