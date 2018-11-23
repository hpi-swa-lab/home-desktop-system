background styles
setLizardBackgroundGradient
	"self setLizardBackgroundGradient"

	| color1 fill color3 |
	color1 := Color fromString: '#304352'.
	color3 := Color fromString: '#d7d2cc'.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
