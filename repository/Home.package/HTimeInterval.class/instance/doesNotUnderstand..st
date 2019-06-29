as yet unclassified
doesNotUnderstand: aMessage

	[^ aMessage sendTo: self timespan]
		on: NotFound
		do: [^ super doesNotUnderstand: aMessage]