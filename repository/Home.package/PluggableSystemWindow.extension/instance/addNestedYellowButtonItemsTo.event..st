*Home-SWDEva
addNestedYellowButtonItemsTo: aMenu event: evt

	| underMouse |
	self flag: #todo. "better"
	
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