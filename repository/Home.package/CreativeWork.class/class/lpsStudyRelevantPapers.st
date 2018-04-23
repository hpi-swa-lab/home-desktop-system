as yet unclassified
lpsStudyRelevantPapers

	^ self lpsStudyPapers select: [:c | (c ? #lpsIsRelevant) = true]