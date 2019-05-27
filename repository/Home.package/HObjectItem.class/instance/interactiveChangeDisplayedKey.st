as yet unclassified
interactiveChangeDisplayedKey

	<rackOperationLabel: 'change displayed attribute' inContextMenus: true>
	
	| newDisplayedKey viableKeys |
	
	self object ifNil: [^ self].
	viableKeys := self object additionalStateKeys copy asOrderedCollection addAll: self object allMemberKeys asOrderedCollection.
	newDisplayedKey := UIManager default chooseFrom: viableKeys values: viableKeys.
	self changeDisplayedKey: newDisplayedKey