background styles
setJaipurBackgroundGradient
	"self setJaipurBackgroundGradient"

	| color1 fill color3 |
	color1 := (Color fromString: '#DBE6F6') duller.
	color3 := (Color fromString: '#C5796D') duller.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
