resolving
knowsSomethingAbout: aUriString regarding: aMessage 
	
	| selectors |
	selectors := {aMessage selector}.
	self class normalizedProperties at: aMessage selector ifPresent: [:s | selectors := selectors , {s}].
	^ (self knowsSomethingAbout: aUriString) 
		and: [(self cachedInformationOn: aUriString) keys anySatisfy: [:k | 
				selectors anySatisfy: [:s |
					k endsWith: s]]]