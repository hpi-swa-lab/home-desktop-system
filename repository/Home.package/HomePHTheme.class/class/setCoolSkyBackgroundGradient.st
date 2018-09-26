background styles
setCoolSkyBackgroundGradient
	"self setCoolSkyBackgroundGradient"

	| color1 color2 fill color3 |
	color1 := Color fromString: '#2980B9'.
	color2 := Color fromString: '#6DD5FA'.
	color3 := Color fromString: '#FFFFFF'.
	fill := GradientFillStyle ramp: {0.0 -> color1. 0.5 -> color2 . 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
