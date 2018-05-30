construction
openMenu
	"Build the open window menu for the world."

	| menu |
	menu := self menu: 'open...'.
	menu defaultTarget: ToolSet default.
	menu addList: ToolSet menuItems.
	menu defaultTarget: self.
	self fillIn: menu from: {
		nil.
		{'file...' . { self . #openFileDirectly} . 'Lets you open a window on a single file'}.
		{'transcript (t)' . {self . #openTranscript}. 'A window used to report messages sent to Transcript' }.
		"{'inner world' . { WorldWindow . #test1} }."
		nil.
	}.
	self fillIn: menu from: self class registeredOpenCommands.
	menu addLine.

	self mvcProjectsAllowed ifTrue:
		[self fillIn: menu from: { {'mvc project' . {self. #openMVCProject} . 'Creates a new project of the classic "mvc" style'} }].

	self fillIn: menu from: { 
		{'morphic project' . {self. #openMorphicProject} . 'Creates a new morphic project'}.
	}.
	Smalltalk at: #SMxMorphicProject ifPresent: [:p |
		self fillIn: menu from: { 
			{ 'simple morphic project' . { self . #openSMxMorphicProject } . 'Creates a new simple morphic project' }.
		}
	].
	^menu
