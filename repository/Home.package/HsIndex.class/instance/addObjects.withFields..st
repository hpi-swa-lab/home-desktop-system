book keeping
addObjects: aCollection withFields: fields

	aCollection do: [:object |
		self addObject: object withFields: fields]