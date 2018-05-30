construction
changesMenu
        "Build the changes menu for the world."

        | menu |
        menu := self menu: 'changes...'.
        self fillIn: menu from: {
                { 'file out current change set' . { ChangeSet current . #verboseFileOut}.
                                'Write the current change set out to a file whose name reflects the change set name and the current date & time.'}.
                { 'create new change set...' . { ChangeSet . #newChangeSet}. 'Create a new change set and make it the current one.'}.
                { 'browse changed methods' . { ChangeSet  . #browseChangedMessages}.  'Open a message-list browser showing all methods in the current change set'}.
                { 'check change set for slips' . { self  . #lookForSlips}.
                                'Check the current change set for halts, references to the Transcript, etc., and if any such thing is found, open up a message-list browser detailing all possible slips.'}.

                nil.
                { 'simple change sorter' . {self. #openChangeSorter1}.  'Open a 3-paned changed-set viewing tool'}.
                { 'dual change sorter' . {self. #openChangeSorter2}.
                                'Open a change sorter that shows you two change sets at a time, making it easy to copy and move methods and classes between them.'}.
               { 'find a change sorter (C)' . { #myWorld . #findAChangeSorter: }. 'Brings an open change sorter to the front, creating one if necessary, and makes it the active window'}.
                nil.
                { 'browse recent submissions (R)' . { Utilities . #browseRecentSubmissions}.
                                'Open a new recent-submissions browser.  A recent-submissions browser is a message-list browser that shows the most recent methods that have been submitted.  If you submit changes within that browser, it will keep up-to-date, always showing the most recent submissions.'}.
			{ 'browse my changes' . { SystemNavigation new . #browseMyChanges }.
					'Browse all of my changes since the last time #condenseSources was run.'}.
			nil.
                { 'recently logged changes...' . { self . #browseRecentLog}.'Open a change-list browser on the latter part of the changes log.  You can use this browser to recover logged changes which were not saved in your image, in the event of a crash or other interruption.'}.

                { 'recent log file...' . { Smalltalk . #writeRecentToFile}.
                                'Create a file holding the logged changes (going as far back as you wish), and open a window on that file.'}.

                nil.
                { 'save world as morph file' . {self. #saveWorldInFile}. 'Save a file that, when reloaded, reconstitutes the current World.'}.
                nil.
        }.
        ^ menu