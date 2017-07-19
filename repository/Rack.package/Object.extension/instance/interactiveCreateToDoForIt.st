*Rack
interactiveCreateToDoForIt

	<rackOperationLabel: 'create todo for it' inContextMenus: true>
	
	^ (ToDo new: (UIManager default request: 'Describe the ToDo:'))
		refersTo: self;
		yourself