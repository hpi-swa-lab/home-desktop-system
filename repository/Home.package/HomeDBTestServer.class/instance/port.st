accessing
port

	^ port ifNil: [port := (10000 to: 50000) atRandom]