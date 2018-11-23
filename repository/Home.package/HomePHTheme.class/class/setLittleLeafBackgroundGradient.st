background styles
setLittleLeafBackgroundGradient
	"self setLittleLeafBackgroundGradient"

	| color1 fill color3 |
	color1 := (Color fromString: '#76b852') duller.
	color3 := (Color fromString: '#8DC26F') duller.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
