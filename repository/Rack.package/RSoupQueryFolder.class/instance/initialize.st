accessing
initialize

	super initialize.
	self query: [:item | false].
	self postProcessing: [:items | items]