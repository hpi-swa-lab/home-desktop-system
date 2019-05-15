Rack
addMenuOperationsTo: aMenu
	|allOperations baseOperations customOperations baseMenu|
	allOperations := self menuOperations.
	baseOperations := self baseMenuOperations.
	customOperations := allOperations difference: baseOperations.
	
	customOperations do: [:operation | self addMenuOperation: operation To: aMenu].
	aMenu addLine.
	baseMenu :=  MenuMorph new defaultTarget: self.
	baseMenu title: 'DomainObject' translated.
	baseOperations do: [:operation | self addMenuOperation: operation To: baseMenu].
	aMenu add: 'DomainObject' translated subMenu: baseMenu.