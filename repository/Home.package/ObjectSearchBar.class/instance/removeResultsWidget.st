as yet unclassified
removeResultsWidget

	resultsWidget ifNotNil: [:w | w delete].
	resultsWidget := nil.