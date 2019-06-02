searching
smartSearch: text in: morph
	"Take the user input and perform an appropriate search"
	| input result |
	self removeResultsWidget.
	input := text asString ifEmpty:[^self].
	result := self class useAdvancedObjectSearch
				ifTrue: [self advancedSearch: input]
				ifFalse: [(soup search: input) sorted: [:a :b | a asString < b asString]].
	result ifNotEmpty: [	ToolSet explore: result].