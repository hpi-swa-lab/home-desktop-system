manual adjustments
reset
	"forget all stored type priority ordering information"
	"        self reset        "
	Types := OrderedCollection new.
	self fillInitialPriorities.
	self prioritiesChanged.