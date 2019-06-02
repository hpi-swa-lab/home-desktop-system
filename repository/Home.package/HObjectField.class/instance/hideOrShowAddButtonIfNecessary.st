as yet unclassified
hideOrShowAddButtonIfNecessary

	self maxNumberOfItems ifNil: [^ self].
	
	self submorphs size - 1 < self maxNumberOfItems
		ifTrue: [addButton show]
		ifFalse: [addButton hide]