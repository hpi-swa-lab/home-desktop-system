printing
printOn: aStream

	^ aStream << 'Stay at ' << (self place asString) << ' from ' << (self stayingInterval asString)