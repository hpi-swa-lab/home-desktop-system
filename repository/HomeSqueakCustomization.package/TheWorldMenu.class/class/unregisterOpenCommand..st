open-menu registry
unregisterOpenCommand: label
	"Remove the open command with the given label from the registry"
	
	self registry removeAllSuchThat: [:e | e first = label]