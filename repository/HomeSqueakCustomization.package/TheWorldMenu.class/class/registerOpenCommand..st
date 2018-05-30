open-menu registry
registerOpenCommand: anArray
	"The array received should be of form {'A Label String'. {TargetObject. #command}  'A Help String'} ; the final element is optional but if present will be used to supply balloon help for the menu item in the Open menu.
	If any previous registration of the same label string is already known, delete the old one."

	self unregisterOpenCommand: anArray first.
	OpenMenuRegistry addLast: anArray