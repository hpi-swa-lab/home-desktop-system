construction
debugMenu

        | menu |

        menu := self menu: 'debug...'.
        self fillIn: menu from: { 
                { 'inspect world' . { #myWorld . #inspect } }.
                { 'explore world' . { #myWorld . #explore } }.
                { 'inspect model' . { myWorld model . #inspect } }.
                        " { 'talk to world...' . { self . #typeInMessageToWorld } }."
                { 'start MessageTally' . { self . #startMessageTally } }.
                { 'start/browse MessageTally' . { self . #startThenBrowseMessageTally } }.
                { 'open process browser' . { self . #openProcessBrowser } }.
                nil.
                        "(self hasProperty: #errorOnDraw) ifTrue:  Later make this come up only when needed."
                { 'start drawing again' . { #myWorld . #resumeAfterDrawError } }.
                { 'start stepping again' . { #myWorld . #resumeAfterStepError } }.
                nil.
                { 'call #tempCommand' . { #myWorld . #tempCommand } }.
                { 'define #tempCommand' . { #myWorld . #defineTempCommand } }.
        }.
	self haltOnceEnabled
		ifTrue: [menu
				add: 'disable halt/inspect once' translated
				target: menu
				action: #clearHaltOnce]
		ifFalse: [menu
				add: 'enable halt/inspect once' translated
				target: menu
				action: #setHaltOnce].
	^menu
	