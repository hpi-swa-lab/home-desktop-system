commands
worldMenuHelp
	| explanation aList |
	"self currentWorld primaryHand worldMenuHelp"

	aList := OrderedCollection new.
	#(helpMenu changesMenu openMenu debugMenu projectMenu scriptingMenu windowsMenu playfieldMenu appearanceMenu flapsMenu) 
		with:
	#('help' 'changes' 'open' 'debug' 'projects' 'authoring tools' 'windows' 'playfield options' 'appearance' 'flaps') do:
		[:sel :title | | aMenu |
		aMenu := self perform: sel.
			aMenu items do:
				[:it | | cnts |
				(((cnts := it contents) = 'keep this menu up') or: [cnts isEmpty])
					ifFalse: [aList add: (cnts, ' - ', title translated)]]].
	aList sort: [:a :b | a caseInsensitiveLessOrEqual: b ].

	explanation := String streamContents: [:aStream | aList do:
		[:anItem | aStream nextPutAll: anItem; cr]].

	(StringHolder new contents: explanation)
		openLabel: 'Where in the world menu is...' translated