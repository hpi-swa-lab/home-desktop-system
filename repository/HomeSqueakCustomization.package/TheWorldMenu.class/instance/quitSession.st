commands
quitSession

	Smalltalk
		snapshot: (UserDialogBoxMorph 
			confirm: 'Save changes before quitting?' translated 
			orCancel: [^ self]
			at: World center)
		andQuit: true