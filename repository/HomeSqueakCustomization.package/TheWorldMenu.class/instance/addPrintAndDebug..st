construction
addPrintAndDebug: menu
	Preferences simpleMenus ifFalse: [
		self
			fillIn: menu
			from: {
				{ 'make screenshot'. {self. #saveScreenshot}. 'makes a screenshot and saves it to disk'}.
				"{ 'print PS to file...'. { self. #printWorldOnFile }. 'write the world into a postscript file' }."
				{ 'debug...'. { self. #debugDo }. 'a menu of debugging items' }
			} ]