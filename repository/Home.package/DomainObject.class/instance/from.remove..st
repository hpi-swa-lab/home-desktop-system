accessing
from: selector remove: anObject

	^ self perform: (selector , ':') asSymbol withArguments: {((self ?? selector) copyWithout: anObject)}