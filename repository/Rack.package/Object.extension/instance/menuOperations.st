*Rack
menuOperations

	^ (#(#rackOperation . #rackOperationLabel:inContextMenus: . #rackOperationLabel:group:inContextMenus:)
		collect: [:pragmaName | Pragma allNamed: pragmaName from: self class to: Object]) flatten