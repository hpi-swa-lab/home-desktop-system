initialization
initialize

	super initialize.
	scoreBoard := SortedCollection sortBlock: self sortBlock.
	capacity := self defaultCapacity