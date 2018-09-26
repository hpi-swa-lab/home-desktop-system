background styles
setBackgroundGradient

	| color1 color2 fill |
	color1 := Color fromString: '#acc7a6'.
	color2 := Color fromString: '#486a86'.
	fill := GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color2}.
	fill origin: ActiveWorld bottomCenter - (0@100).
	fill direction: 0 @ (ActiveWorld bounds extent y * 0.8).
	fill normal: (ActiveWorld bounds extent x * 0.8) @ 0.
	fill radial: true.
	ActiveWorld fillStyle: fill
