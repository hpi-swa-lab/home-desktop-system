as yet unclassified
selectPapersForSynthesis: works
	
	^ ((works
		select: [:c | (c ? #lpsIsRelevantPapersFromFirstRound) = true])
		select: [:c | (c ? #lpsIsRelevant) = true]) asSet