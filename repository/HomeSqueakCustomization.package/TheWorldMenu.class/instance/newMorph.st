construction
newMorph
	"The user requested 'new morph' from the world menu.  Put up a menu that allows many ways of obtaining new morphs."

	| menu |

	menu := self menu: 'Add a new morph'.
	menu 
		add: 'from paste buffer' translated target: myHand action: #pasteMorph;
		add: 'from alphabetical list' translated subMenu: self alphabeticalMorphMenu;
		add: 'from a file...' translated target: self action: #readMorphFromAFile.
	menu addLine.
	menu add: 'grab rectangle from screen' translated target: myWorld action: #grabDrawingFromScreen:;
		add: 'grab with lasso from screen' translated target: myWorld action: #grabLassoFromScreen:;
		add: 'grab rubber band from screen' translated target: myWorld action: #grabRubberBandFromScreen:;
		add: 'grab flood area from screen' translated target: myWorld action: #grabFloodFromScreen:.
	menu addLine.
	menu add: 'make new drawing' translated target: myWorld action: #newDrawingFromMenu:;
		add: 'make link to project...' translated target: self action: #projectThumbnail.

	self doPopUp: menu.
