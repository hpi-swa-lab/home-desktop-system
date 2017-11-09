as yet unclassified
processTimestamp: timestampString at: key in: properties

	[^ #timestamp -> timestampString asRFC822DateAndTime ]
		on: Error
		do: [:e | ^ #timestamp -> timestampString]