private
lookup: anUri

	^ cache at: (anUri findTokens: '/') last asNumber