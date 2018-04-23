accessing
remove: anObject from: selector 

	^ self perform: (selector , ':') asSymbol withArguments: {((self ?? selector) copyWithout: anObject)}