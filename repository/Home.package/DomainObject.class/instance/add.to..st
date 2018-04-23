accessing
add: anObject to: selector

	^ self perform: (selector , ':') asSymbol withArguments: {(self ?? selector) , {anObject}}