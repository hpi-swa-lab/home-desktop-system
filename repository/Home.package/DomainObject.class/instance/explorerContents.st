*Home-UI
explorerContents
	
	^  ((self additionalStateSelectors collect: [ :selector |
		ObjectExplorerWrapper
			with: (self getAdditionalStateAt: selector)
			name: (selector asString contractTo: 32)
			model: self ])
		, (super explorerContents reject: [:w | w itemName isAnyOf: self internalStateNames])) sorted