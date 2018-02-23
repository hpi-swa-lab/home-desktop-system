private
at: aKey

	^ boxes detect: [:b | b label = aKey]