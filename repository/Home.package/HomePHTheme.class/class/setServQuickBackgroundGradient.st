background styles
setServQuickBackgroundGradient
	"self setServQuickBackgroundGradient"

	| color1 fill color3 |
	color1 := Color fromString: '#485563'.
	color3 := Color fromString: '#29323c'.
	fill := GradientFillStyle ramp: {0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld topCenter.
	fill direction: 0@ActiveWorld height.
	ActiveWorld fillStyle: fill
