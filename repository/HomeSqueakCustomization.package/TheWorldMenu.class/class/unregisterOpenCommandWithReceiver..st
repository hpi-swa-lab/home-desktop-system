open-menu registry
unregisterOpenCommandWithReceiver: aReceiver
	"Remove the open command with the given object as receiver from the registry"
	
	self registry removeAllSuchThat: [:e | e second first == aReceiver]