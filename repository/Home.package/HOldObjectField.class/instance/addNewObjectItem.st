as yet unclassified
addNewObjectItem

	| newItem |
	newItem := (HObjectItem for: self).
	self addMorph: newItem inFrontOf: addButton.
	self items add: newItem.
	self hideOrShowAddButtonIfNecessary