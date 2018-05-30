construction
addRestoreDisplay: menu
	self
		fillIn: menu
		from: {
			{'restore display (r)'. { Project current. #restoreDisplay }. 'repaint the screen -- useful for removing unwanted display artifacts, lingering cursors, etc.' }.
			nil
		}