initialize-release
clearCacheOf: aUri for: aResolver

	(cache at: aUri) removeKey: aResolver ifAbsent: [] 