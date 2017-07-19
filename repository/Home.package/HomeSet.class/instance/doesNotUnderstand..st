as yet unclassified
doesNotUnderstand: aMessage

	| typeSelector |
	typeSelector := ('is' , aMessage selector asString allButLast capitalized) asSymbol.	
	[^ self select: [:member |
		member perform: typeSelector]]
			on: MessageNotUnderstood
			do: [:e | super doesNotUnderstand: aMessage]