background styles
setSandToBlueBackgroundGradient
	"self setSandToBlueBackgroundGradient"

	| color1 fill color3 |
	color1 := Color fromString: '#3E5151'.
	color3 := Color fromString: '#DECBA4'.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
