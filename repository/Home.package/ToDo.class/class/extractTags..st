as yet unclassified
extractTags: description

	^ description substrings 
		select: [:t | t beginsWith: '#'] 
		thenCollect: [:t | t copyWithoutFirst]