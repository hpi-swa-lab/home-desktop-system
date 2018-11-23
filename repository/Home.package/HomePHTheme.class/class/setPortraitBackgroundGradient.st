background styles
setPortraitBackgroundGradient
	"self setPortraitBackgroundGradient"

	| color1 fill color3 |
	color1 := Color fromString: '#8e9eab'.
	color3 := Color fromString: '#eef2f3'.
	fill := GradientFillStyle ramp: {0.2 -> color1. 0.9 -> color3}.
	fill origin: ActiveWorld topCenter.
	fill direction: 0@ActiveWorld height.
	ActiveWorld fillStyle: fill
