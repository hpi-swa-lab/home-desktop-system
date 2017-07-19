as yet unclassified
explorerContents
	
	^  (self additionalStateSelectors collect: [ :selector |
		ObjectExplorerWrapper
			with: (self getAdditionalStateAt: selector)
			name: (selector printString contractTo: 32)
			model: self ])
		, super explorerContents