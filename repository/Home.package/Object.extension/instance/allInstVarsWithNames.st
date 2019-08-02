*Home-Search
allInstVarsWithNames

	| values instVarNames |
	instVarNames := self class allInstVarNames.
	values := Array new: instVarNames size.
	1 to: instVarNames size do: [:index |
		values at: index put: ((instVarNames at: index) -> (self instVarAt: index))].
	^ values