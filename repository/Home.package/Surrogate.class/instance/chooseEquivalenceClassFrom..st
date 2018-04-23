accessing
chooseEquivalenceClassFrom: aDictionary

	^ aDictionary at: uri ifAbsent: [{self}]