*Home-Search
allInstVars

	| values numInstVars |
	numInstVars := self class instSize.
	values := Array new: numInstVars.
	1 to: numInstVars do: [:index |
		values at: index put: (self instVarAt: index)].
	^ values