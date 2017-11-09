*Rack
interactiveCreateSubBox

	<rackOperationLabel: 'create box' inContextMenus: true>

	| boxName |
	boxName := UIManager default request: 'Please enter the box name'.
	boxName isEmptyOrNil ifTrue: [^ self].
	self createSubBoxNamed: boxName withBlanksTrimmed.