*Home-Search
instVarDict

	| values instVarNames |
	instVarNames := self class instVarNames.
	values := Dictionary new: instVarNames size.
	1 to: instVarNames size do: [:index |
		values at: (instVarNames at: index) put: (self instVarAt: index)].
	^ values