accessing
displayedKey

	^ self privateDisplayedKey ifNil: [self defaultDisplayedKey]