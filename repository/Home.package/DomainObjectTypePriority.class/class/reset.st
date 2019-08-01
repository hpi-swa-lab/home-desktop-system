manual adjustments
reset
	"forget all stored type priority ordering information"
	"        self reset        "
	<rackOperationLabel: 'reset priority order' inContextMenus: true>
	Types := OrderedCollection new.
	self fillInitialPriorities.
	self prioritiesChanged.