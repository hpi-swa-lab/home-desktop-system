as yet unclassified
removeObjectItem: anObjectItem

	self removeMorph: anObjectItem.
	self items remove: anObjectItem.
	self hideOrShowAddButtonIfNecessary