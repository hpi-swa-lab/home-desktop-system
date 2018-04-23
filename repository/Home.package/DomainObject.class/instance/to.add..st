accessing
to: selector add: anObject

	^ self perform: (selector , ':') asSymbol withArguments: {(self ?? selector) , {anObject}}