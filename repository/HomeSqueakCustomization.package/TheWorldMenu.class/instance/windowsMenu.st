windows & flaps menu
windowsMenu
        "Build the windows menu for the world."

        ^ self fillIn: (self menu: 'windows') from: {  
                { 'find window' . { #myWorld . #findWindow: }. 'Presents a list of all windows; if you choose one from the list, it becomes the active window.'}.

                { 'find changed browsers...' . { #myWorld . #findDirtyBrowsers: }. 'Presents a list of browsers that have unsubmitted changes; if you choose one from the list, it becomes the active window.'}.

                { 'find changed windows...' . { #myWorld . #findDirtyWindows: }. 'Presents a list of all windows that have unsubmitted changes; if you choose one from the list, it becomes the active window.'}.
			nil.

                { 'find a transcript (t)' . { #myWorld . #findATranscript: }. 'Brings an open Transcript to the front, creating one if necessary, and makes it the active window'}.

               { 'find a fileList (L)' . { #myWorld . #findAFileList: }. 'Brings an open fileList  to the front, creating one if necessary, and makes it the active window'}.

               { 'find a change sorter (C)' . { #myWorld . #findAChangeSorter: }. 'Brings an open change sorter to the front, creating one if necessary, and makes it the active window'}.

			{ 'find message names (W)' . { #myWorld . #findAMessageNamesWindow: }. 'Brings an open MessageNames window to the front, creating one if necessary, and makes it the active window'}.

			 nil.
                { #staggerPolicyString . { self . #toggleWindowPolicy }. 'stagger: new windows positioned so you can see a portion of each one.
                tile: new windows positioned so that they do not overlap others, if possible.'}.

                nil.
                { 'collapse all windows' . { #myWorld . #collapseAll }. 'Reduce all open windows to collapsed forms that only show titles.'}.
                { 'expand all windows' . { #myWorld . #expandAll }. 'Expand all collapsed windows back to their expanded forms.'}.
                { 'close top window (w)' . { SystemWindow . #closeTopWindow }. 'Close the topmost window if possible.'}.
                { 'send top window to back (\)' . { SystemWindow . #sendTopWindowToBack  }. 'Make the topmost window become the backmost one, and activate the window just beneath it.'}.
			 { 'move windows onscreen' . { #myWorld . #bringWindowsFullOnscreen }. 'Make all windows fully visible on the screen'}.

                nil.
                { 'delete unchanged windows' . { #myWorld . #closeUnchangedWindows }. 'Deletes all windows that do not have unsaved text edits.'}.
                { 'delete non-windows' . { #myWorld . #deleteNonWindows }. 'Deletes all non-window morphs lying on the world.'}.
                { 'delete both of the above' . { self . #cleanUpWorld }. 'deletes all unchanged windows and also all non-window morphs lying on the world, other than flaps.'}.

        }