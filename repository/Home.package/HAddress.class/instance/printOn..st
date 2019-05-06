printing
printOn: aStream

	| addressParts |
	addressParts := {
		self street ifNotNil: [{self street . self housenumber}] ifNil: #().
		{self postcode . self city}.
		{self country}}.
	aStream nextPutAll: ((addressParts
		collect: [:part |
			(part copyWithout: nil) joinSeparatedBy: ' ']
		thenSelect: [:part |
			part notEmpty])
				joinSeparatedBy: ', ')