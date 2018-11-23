background styles
setEasyMedBackgroundGradient
	"self setEasyMedBackgroundGradient"

	| color1 fill color3 |
	color1 := Color fromString: '#DCE35B'.
	color3 := Color fromString: '#45B649'.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
