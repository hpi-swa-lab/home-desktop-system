accessing
printOn: aStream

	^ aStream << self firstname asString; << ' '; << self lastname asString