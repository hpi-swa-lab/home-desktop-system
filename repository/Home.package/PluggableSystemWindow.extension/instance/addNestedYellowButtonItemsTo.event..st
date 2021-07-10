*Home-SWDEva
addNestedYellowButtonItemsTo: aMenu event: evt

	| underMouse |
	self flag: #ToDo. "This is just a workaround for HMDMailComposition to work correctly. Once a final change set for textAnchors is released and this issue resolved (= in the used image all textAnchor morphs have relative coordinates), this can be removed"
	
	(self model respondsTo: #mailRecipientField) ifTrue: [
	underMouse := self model mailRecipientField getInnerMorphs select: [:itemMorph | (itemMorph bounds translateBy: self model mailRecipientField position) containsPoint: evt position].
	underMouse ifNotEmpty: [underMouse := underMouse first.
		(underMouse addMyYellowButtonMenuItemsToSubmorphMenus
			and: [underMouse hasYellowButtonMenu])
		ifTrue: [| submenu |
			aMenu addLine.
			submenu := MenuMorph new defaultTarget: underMouse.
			underMouse addNestedYellowButtonItemsTo: submenu event: evt.
			aMenu
				add: underMouse externalName
				icon: (underMouse iconOrThumbnailOfSize: 16)
				subMenu: submenu
		]]].

	super addNestedYellowButtonItemsTo: aMenu event: evt