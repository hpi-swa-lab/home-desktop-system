construction
addUtilities: menu
	Preferences simpleMenus ifFalse: [
		self
			fillIn: menu
			from: {
				{ 'open...'. { self. #openWindow } }.
				{ 'windows...'. { self. #windowsDo } }.
				{ 'changes...'. { self. #changesDo } }
			} ].
	self
		fillIn: menu
		from: {
			{ 'help...'. { self. #helpDo }. 'puts up a menu of useful items for updating the system, determining what version you are running, and much else' }.
			{ 'appearance...'. { self. #appearanceDo }. 'put up a menu offering many controls over appearance.' }
		}.
	Preferences simpleMenus ifFalse: [
		self
			fillIn: menu
			from: {
				{ 'do...'. { Utilities. #offerCommonRequests }. 'put up an editible list of convenient expressions, and evaluate the one selected.' }
			} ]