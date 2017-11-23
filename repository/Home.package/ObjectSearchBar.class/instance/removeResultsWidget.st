toolbuilder
removeResultsWidget

	resultsWidget ifNotNil: [:w | w delete].
	resultsWidget := nil.