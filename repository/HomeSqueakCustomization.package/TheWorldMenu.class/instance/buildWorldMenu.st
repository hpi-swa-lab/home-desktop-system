construction
buildWorldMenu
	"Build the menu that is put up when the screen-desktop is clicked on"
	| menu domainObjectMenu |
	menu := MenuMorph new defaultTarget: self.
	menu commandKeyHandler: self.
	self colorForDebugging: menu.
	menu addStayUpItem.
	self makeConvenient: menu.
	Smalltalk at: #ServiceGUI ifPresent:[:sgui|
		sgui worldMenu: menu.
		sgui onlyServices ifTrue: [^ menu].
	].
	menu addLine.
	self
		fillIn: menu
		from: {
			{'Write an email' . {MDMailComposition . #open} . 'Write a new email' }.
			{'New Markdown Document' . {MarkdownEditor . #open} . 'Opens a markdown editor'}
		}.
		
	domainObjectMenu := self menu: 'Create new object'.
	self fillIn: domainObjectMenu from: self dataForNewObjectMenu.
	menu add: 'Create new object' subMenu: domainObjectMenu.
		
	"self addProjectEntries: menu."
	myWorld addUndoItemsTo: menu.
	"self addRestoreDisplay: menu."
	self addUtilities: menu.
	"self addObjectsAndTools: menu.
	self addPrintAndDebug: menu."
	self addSaveAndQuit: menu.
	^ menu