accessing
editingWidget: anObject
	
	editingWidget := anObject.
	editingWidget when: #addCollection evaluate: [:o | 
		self triggerEvent: #addCollection with: o].
	self reorder