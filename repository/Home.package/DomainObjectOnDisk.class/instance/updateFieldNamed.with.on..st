private
updateFieldNamed: key with: value on: newObject
	
	| actualValue |
	actualValue := (poolOfObjects includesKey: value) 
						ifTrue: [poolOfObjects at: value]
						ifFalse: [value].
	
	(newObject class allInstVarNames includes: key)
		ifTrue: [newObject instVarNamed: key put: actualValue]
		ifFalse: [newObject setAdditionalStateSilentlyAt: key put: actualValue]