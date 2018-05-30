commands
changeBackgroundColor
	"Let the user select a new background color for the world"
	myWorld
		changeColorTarget: myWorld
		selector: #setAsBackground:
		originalColor: myWorld fillStyle asColor
		hand: myWorld activeHand