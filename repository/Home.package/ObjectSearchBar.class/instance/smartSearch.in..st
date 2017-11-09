as yet unclassified
smartSearch: text in: morph
	"Take the user input and perform an appropriate search"
	| input |
	self removeResultsWidget.
	input := text asString ifEmpty:[^self].
	
	ToolSet explore: ((soup search: input) sorted: [:a :b | a asString < b asString]).