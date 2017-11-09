accessing
thenCleanse: aBlock

	self 
		automaticResolutionRequested: true;
		automaticCleansingBlock: aBlock.
		
	^ self