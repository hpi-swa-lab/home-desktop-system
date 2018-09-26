background styles
setAtlasBackgroundGradient
	"self setAtlasBackgroundGradient"

	| color1 color2 fill color3 |
	color1 := Color fromString: '#feac5e'.
	color2 := Color fromString: '#c779d0'.
	color3 := Color fromString: '#4bc0c8'.
	fill := GradientFillStyle ramp: {0.0 -> color1. 0.5 -> color2 . 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
