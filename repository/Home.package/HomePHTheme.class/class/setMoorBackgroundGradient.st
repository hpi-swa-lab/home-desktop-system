background styles
setMoorBackgroundGradient
	"self setMoorBackgroundGradient"

	| color1 fill color3 |
	color1 := (Color fromString: '#616161') duller.
	color3 := (Color fromString: '#9bc5c3') duller.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
