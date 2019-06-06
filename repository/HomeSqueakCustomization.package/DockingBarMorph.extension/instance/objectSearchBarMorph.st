*HomeSqueakCustomization
objectSearchBarMorph

	^self submorphs detect: [ :each | each knownName = #objectSearchBar ] ifNone: [ nil ]