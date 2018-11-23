background styles
setTurboscentBackgroundGradient
	"self setTurboscentBackgroundGradient"

	| color1 fill color3 |
	color1 := Color fromString: '#F1F2B5'.
	color3 := Color fromString: '#135058'.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
