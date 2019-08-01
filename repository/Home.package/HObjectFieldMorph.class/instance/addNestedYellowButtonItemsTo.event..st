as yet unclassified
addNestedYellowButtonItemsTo: aMenu event: evt

	| underMouse |
	underMouse := self getInnerMorphs select: [:itemMorph | (itemMorph bounds translateBy: self position) containsPoint: evt position].
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
		]].

	super addNestedYellowButtonItemsTo: aMenu event: evt