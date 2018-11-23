ui
resetBackgroundColor

	self color: ((self userInterfaceTheme get: #color for: #SimpleHierarchicalListMorph) ifNil: [Color r: 0.72 g: 0.72 b: 0.9])