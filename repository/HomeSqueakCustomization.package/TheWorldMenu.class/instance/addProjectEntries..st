construction
addProjectEntries: menu
	self
		fillIn: menu
		from: {
			nil.
			{ 'previous project'. { #myWorld. #goBack }. 'return to the most-recently-visited project' }.
			{ 'jump to project...'. { #myWorld. #jumpToProject }. 'put up a list of all projects, letting me choose one to go to' }.
			{ 'save project on file...'. { #myWorld. #saveOnFile }. 'save this project on a file' }.
			{'load project from file...'. {self. #loadProject}. 'load a project from a file' }.
			nil
		}