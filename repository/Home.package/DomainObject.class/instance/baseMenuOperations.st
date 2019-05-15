Rack
baseMenuOperations
	"menu operations defined only in the abstract base class"
	^ (#(#rackOperation . #rackOperationLabel:inContextMenus: . #rackOperationLabel:group:inContextMenus:)
		collect: [:pragmaName | Pragma allNamed: pragmaName from: DomainObject to: Object]) flatten
			collect: [:pragma | {pragma arguments first . pragma method selector}]