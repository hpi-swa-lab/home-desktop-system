utilities
extractDescription: description

	^ (description replaceStrings: ((self extractTags: description) collect: [:t |
		('#' , t) -> ''])) withSeparatorsCompacted