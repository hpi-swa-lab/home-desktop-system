construction
makeConvenient: menu
	self
		fillIn: menu
		from: {
			{ 'Browser'. { StandardToolSet. #openClassBrowser }. 'open a browser' }.
			{ 'Workspace'. { Workspace. #open }. 'open a workspace' }.
			{ 'Transcript'. { Transcript. #open }. 'open a transcript' }.
			Smalltalk at: #TestRunner ifPresent:[:aClass|
				{ 'Test Runner'. { aClass. #open }. 'open a test runner' }.
			].
			nil
		}