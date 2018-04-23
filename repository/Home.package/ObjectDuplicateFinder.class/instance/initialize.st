initialize-release
initialize

	super initialize.
	
	self originals: ((CreativeWork lpsMergedCorpi 
					select: [:c | (c ? #lpsIsRelevantPapersFromFirstRound) = true])
						asSet
						sorted: [:a :b  | a asString < b asString])