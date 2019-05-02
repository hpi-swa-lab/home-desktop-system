types
allTypeObjectsOf: obj
	^ (self allSubclasses collect: [:typeClass | typeClass instance]) select: [:typeClass | typeClass fits: obj]