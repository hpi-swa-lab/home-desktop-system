initialize-release
cache: anObject named: aUri for: aResolver timeout: timeoutInMilliseconds

	(cache at: aUri ifAbsentPut: [Dictionary new]) at: aResolver put: anObject.
	(self future: timeoutInMilliseconds) clearCacheOf: aUri for: aResolver.