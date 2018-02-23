modifying
add: item named: entryName
	
	(boxes anySatisfy: [:b | b label = entryName]) ifTrue: [
		self error: 'There is another box in here which has the same label'].
	boxes add: (REntry in: self named: entryName containing: item).
	self changed.
	^ item