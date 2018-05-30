construction
addSaveAndQuit: menu
	self
		fillIn: menu
		from: {
			nil.
			{ 'save'. { Smalltalk. #saveSession }. 'save the current version of the image on disk' }.
			{ 'save as...'. { Smalltalk. #saveAs }. 'save the current version of the image on disk under a new name.' }.
			{ 'save as new version'. { Smalltalk. #saveAsNewVersion }. 'give the current image a new version-stamped name and save it under that name on disk.' }.
			{ 'save and quit'. { self. #saveAndQuit }. 'save the current image on disk, and quit out of Squeak.' }.
			{ 'quit'. { self. #quitSession }. 'quit out of Squeak.' }
		}