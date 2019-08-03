actions
text: thisNode with: leftTicks with: text with: rightTicks

	^ String streamContents: [:stream |
		text children do: [:char |
			stream nextPut: (self value: char)]]