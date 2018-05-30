construction
appearanceMenu
	"Build the appearance menu for the world."

	^self fillIn: (self menu: 'appearance...') from: {

		{'preferences...' . { self . #openPreferencesBrowser} . 'Opens a "Preferences Browser" which allows you to alter many settings' } .
		{'choose set of preferences...' . { Preferences . #offerThemesMenu} . 'Presents you with a menu of sets or preferences; each item''s balloon-help will tell you about the particular set.  If you choose one, many different preferences that come along are set at the same time; you can subsequently change any settings by using a Preferences Panel'} .
		nil .
		{'system fonts...' . { self . #standardFontDo} . 'Choose the standard fonts to use for code, lists, menus, window titles, etc.'}.
		{'text highlight color...' . { Preferences . #chooseTextHighlightColor} . 'Choose which color should be used for text highlighting in Morphic.'}.
		{'insertion point color...' . { Preferences . #chooseInsertionPointColor} . 'Choose which color to use for the text insertion point in Morphic.'}.
		{'keyboard focus color' . { Preferences . #chooseKeyboardFocusColor} . 'Choose which color to use for highlighting which pane has the keyboard focus'}.
		nil.
		{#menuColorString . { self . #toggleMenuColorPolicy} . 'Governs whether menu colors should be derived from the desktop color.'}.
		{#roundedCornersString . { self . #toggleRoundedCorners} . 'Governs whether morphic windows and menus should have rounded corners.'}.
		nil.
		{'full screen on' . { DisplayScreen . #fullScreenOn} . 'puts you in full-screen mode, if not already there.'}.
		{'full screen off' . { DisplayScreen . #fullScreenOff} . 'if in full-screen mode, takes you out of it.'}.
		nil.
		{'set display depth...' . {self. #setDisplayDepth} . 'choose how many bits per pixel.'}.
		{'set desktop color...' . {self. #changeBackgroundColor} . 'choose a uniform color to use as desktop background.'}.
		{'set gradient color...' . {self. #setGradientColor} . 'choose second color to use as gradient for desktop background.'}.
		{'use texture background' . { #myWorld . #setStandardTexture} . 'apply a graph-paper-like texture background to the desktop.'}.
		nil.
		{'clear turtle trails from desktop' . { #myWorld . #clearTurtleTrails} . 'remove any pigment laid down on the desktop by objects moving with their pens down.'}.
		{'pen-trail arrowhead size...' . { Preferences. #setArrowheads} . 'choose the shape to be used in arrowheads on pen trails.'}.

	}