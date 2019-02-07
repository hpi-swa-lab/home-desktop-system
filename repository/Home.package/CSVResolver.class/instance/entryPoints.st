resolving
entryPoints

	^ cache withIndexCollect: [:line :index |
		Surrogate newOn: ('csv://{1}/{2}' format: {self file name . index asString})]