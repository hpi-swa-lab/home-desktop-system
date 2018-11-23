background styles
setMetallicToadBackgroundGradient
	"self setMetallicToadBackgroundGradient"

	| color1 fill color3 |
	color1 := Color fromString: '#abbaab'.
	color3 := Color fromString: '#ffffff'.
	fill := GradientFillStyle ramp: {0.2 -> color1. 0.9 -> color3}.
	fill origin: ActiveWorld topCenter.
	fill direction: 0@ActiveWorld height.
	ActiveWorld fillStyle: fill
