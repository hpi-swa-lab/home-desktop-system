utilities
extractTags: description

	^ description substrings 
		select: [:t | t beginsWith: '#'] 
		thenCollect: [:t | t copyWithoutFirst]