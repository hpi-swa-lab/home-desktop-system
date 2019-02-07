initialize-release
get: aUri orCacheFrom: anInitialilzationBlock for: resolver timeout: timeout

	^ (cache at: aUri ifAbsentPut: [Dictionary new]) at: resolver ifAbsentPut: [
		(self future: timeout) clearCacheOf: aUri for: resolver.
		anInitialilzationBlock value]