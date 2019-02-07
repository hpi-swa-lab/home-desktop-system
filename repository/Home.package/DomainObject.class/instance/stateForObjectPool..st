storing
stateForObjectPool: storageData

	| objectPoolObjects |
	
	objectPoolObjects := storageData values select: [:object |
		#(isExtended isNumber isString isBoolean isNil) noneSatisfy: [:selector | 
			object perform: selector]].
	
	^ Dictionary newFrom: (objectPoolObjects asSet collect: [:o |
		o -> UUID new asString])
	