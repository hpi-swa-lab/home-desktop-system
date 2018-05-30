open-menu registry
removeObsolete
	"Remove all obsolete commands"	
	self registry removeAllSuchThat: [:e | e second first class isObsolete].