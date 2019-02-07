accessing
at: aNumber
	
	^ (self resolve: (Message selector: aNumber asString asSymbol)) disambiguate