resolving
entryPoints

	^ self class Cache keys collect: [:k | Surrogate newOn: k]