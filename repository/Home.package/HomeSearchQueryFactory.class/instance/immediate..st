conditions
immediate: aValue

	^ self
		compare: (self immediateValue: true)
		with: aValue
		using: #=