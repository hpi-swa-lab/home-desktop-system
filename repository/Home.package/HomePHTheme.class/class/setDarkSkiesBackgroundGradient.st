background styles
setDarkSkiesBackgroundGradient
	"self setDarkSkiesBackgroundGradient"

	| color1 fill color3 |
	color1 := Color fromString: '#4B79A1'.
	color3 := Color fromString: '#283E51'.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
