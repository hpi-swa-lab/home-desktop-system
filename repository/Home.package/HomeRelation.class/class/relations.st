as yet unclassified
relations

	^ (self class selectors copyWithout: #relations) 
		select: [:s | s beginsWith: 'relation']
		thenCollect: [:s | self perform: s]