background styles
setKyooPalBackgroundGradient
	"self setKyooPalBackgroundGradient"

	| color1 fill color3 |
	color1 := (Color fromString: '#dd3e54') duller.
	color3 := (Color fromString: '#6be585') duller.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color3}.
	fill origin: ActiveWorld leftCenter.
	fill direction: ActiveWorld width@0.
	ActiveWorld fillStyle: fill
