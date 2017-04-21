*Rack
menuOperations

	^ ({#rackOperation . #rackOperationLabel:inContextMenus:}
		collect: [:pragmaName | Pragma allNamed: pragmaName from: self class to: Object ]) flatten