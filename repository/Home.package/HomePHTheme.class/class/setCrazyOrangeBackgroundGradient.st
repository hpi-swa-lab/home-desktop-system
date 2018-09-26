background styles
setCrazyOrangeBackgroundGradient
	"self setCrazyOrangeBackgroundGradient"

	| color1 fill color3 |
	color1 := Color fromString: '#d38312'.
	color3 := Color fromString: '#a83279'.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
