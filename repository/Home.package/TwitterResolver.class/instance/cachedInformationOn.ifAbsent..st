private caching
cachedInformationOn: aUriString ifAbsent: retrieveInformationBlock

	| cacheInvalidationDuration |
	cacheInvalidationDuration := ((aUriString includesSubstring: 'home_timeline') or: [
		aUriString includesSubstring: 'user_timeline']) 
			ifTrue: [1 minute]
			ifFalse: [30 minutes].
	
	^ ResolverCache default 
		get: aUriString
		orCacheFrom: retrieveInformationBlock 
		for: self 
		timeout: cacheInvalidationDuration asMilliseconds