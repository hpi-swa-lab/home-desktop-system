windows & flaps menu
windowsMenu
        "Build the windows menu for the world."

        ^ self fillIn: (self menu: 'windows' translatedNoop) from: {  
                { 'find window' translatedNoop. { #myWorld . #findWindow: }. 'Presents a list of all windows; if you choose one from the list, it becomes the active window.' translatedNoop}.

                { 'find changed browsers...' translatedNoop. { #myWorld . #findDirtyBrowsers: }. 'Presents a list of browsers that have unsubmitted changes; if you choose one from the list, it becomes the active window.' translatedNoop}.

                { 'find changed windows...' translatedNoop. { #myWorld . #findDirtyWindows: }. 'Presents a list of all windows that have unsubmitted changes; if you choose one from the list, it becomes the active window.' translatedNoop}.
			nil.

                { 'find a transcript (t)' translatedNoop. { #myWorld . #findATranscript: }. 'Brings an open Transcript to the front, creating one if necessary, and makes it the active window' translatedNoop}.

               { 'find a fileList (L)' translatedNoop. { #myWorld . #findAFileList: }. 'Brings an open fileList to the front, creating one if necessary, and makes it the active window' translatedNoop}.

               { 'find a change sorter (C)' translatedNoop. { #myWorld . #findAChangeSorter: }. 'Brings an open change sorter to the front, creating one if necessary, and makes it the active window' translatedNoop}.

			{ 'find message names (W)' translatedNoop. { #myWorld . #findAMessageNamesWindow: }. 'Brings an open MessageNames window to the front, creating one if necessary, and makes it the active window' translatedNoop}.

			 nil.
                { #staggerPolicyString . { self . #toggleWindowPolicy }. 'stagger: new windows positioned so you can see a portion of each one.
                tile: new windows positioned so that they do not overlap others, if possible.' translatedNoop}.

                nil.
                { 'collapse all windows' translatedNoop. { #myWorld . #collapseAll }. 'Reduce all open windows to collapsed forms that only show titles.' translatedNoop}.
                { 'expand all' translatedNoop. { #myWorld . #expandAll }. 'Expand all collapsed windows and other collapsed objects back to their expanded forms.' translatedNoop}.
		
                { 'close top window (w)' translatedNoop. { SystemWindow . #closeTopWindow }. 'Close the topmost window if possible.' translatedNoop}.
                { 'send top window to back (\)' translatedNoop. { SystemWindow . #sendTopWindowToBack  }. 'Make the topmost window become the backmost one, and activate the window just beneath it.' translatedNoop}.
			 { 'move windows onscreen' translatedNoop. { #myWorld . #bringWindowsFullOnscreen }. 'Make all windows fully visible on the screen' translatedNoop}.

                nil.
                { 'delete unchanged windows' translatedNoop. { #myWorld . #closeUnchangedWindows }. 'Deletes all windows that do not have unsaved text edits.' translatedNoop}.
                { 'delete non-windows' translatedNoop. { #myWorld . #deleteNonWindows }. 'Deletes all non-window morphs lying on the world.' translatedNoop}.
                { 'delete both of the above' translatedNoop. { self . #cleanUpWorld }. 'deletes all unchanged windows and also all non-window morphs lying on the world, other than flaps.' translatedNoop}.

        }