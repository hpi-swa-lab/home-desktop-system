construction
helpMenu
        "Build the help menu for the world."
        |  menu |

  	menu := self menu: 'help...'.

        self fillIn: menu from:
        {
                {'about this system...'. {Smalltalk. #aboutThisSystem}. 'current version information.'}.
                {'update code from server'. {MCMcmUpdater. #updateFromServer}. 'load latest code updates via the internet'}.
                {'preferences...'. {self. #openPreferencesBrowser}. 'view and change various options.'}.
			 {'set language...' . {Project. #chooseNaturalLanguage}. 'choose the language in which tiles should be displayed.'} .
                nil.
               {'command-key help'. { TheWorldMainDockingBar instance . #commandKeyHelp}. 'summary of keyboard shortcuts.'}
	}.

	self addGestureHelpItemsTo: menu.

	self fillIn: menu from:
	{
                {'world menu help'. { self . #worldMenuHelp}. 'helps find menu items buried in submenus.'}.
                        "{'info about flaps' . { Utilities . #explainFlaps}. 'describes how to enable and use flaps.'}."
                {'font size summary' . { TextStyle . #fontSizeSummary}.  'summary of names and sizes of available fonts.'}.
                {'useful expressions' . { Utilities . #openStandardWorkspace}. 'a window full of useful expressions.'}.
			 {'annotation setup...' . { Preferences . #editAnnotations}. 'Click here to get a little window that will allow you to specify which types of annotations, in which order, you wish to see in the annotation panes of browsers and other tools'}.
			nil.
                {'graphical imports' . { Imports default . #viewImages}.  'view the global repository called ImageImports; you can easily import external graphics into ImageImports via the FileList'}.
                {'standard graphics library' . { ScriptingSystem . #inspectFormDictionary}.  'lets you view and change the system''s standard library of graphics.'}.
                nil.
                {'telemorphic...' . {self. #remoteDo}.  'commands for doing multi-machine "telemorphic" experiments'}.
                {#soundEnablingString . { SoundService . #toggleSoundEnabled}. 'turning sound off will completely disable Squeak''s use of sound.'}.
                nil.

                {'set author initials...' . { Utilities . #setAuthorInitials }. 'supply initials to be used to identify the author of code and other content.'}.
                {'vm statistics' . { self . #vmStatistics}.  'obtain some intriguing data about the vm.'}.
			  nil.
			  {'purge undo records' . { CommandHistory . #resetAllHistory }. 'save space by removing all the undo information remembered in all projects.'}.
                {'space left' . { self . #garbageCollect}. 'perform a full garbage-collection and report how many bytes of space remain in the image.'}.
        }.

	^menu

