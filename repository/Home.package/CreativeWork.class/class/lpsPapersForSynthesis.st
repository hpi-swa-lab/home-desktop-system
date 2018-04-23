as yet unclassified
lpsPapersForSynthesis

	^ ((self lpsMergedCorpi 
		select: [:c | (c ? #lpsIsRelevantPapersFromFirstRound) = true])
		select: [:c | (c ? #lpsIsRelevant) = true]) asSet