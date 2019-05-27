fields
inputToSelector: input
	"prepare user input to be a selector. This method is the counterpart to ObjectEditorSlotWrapper>>labelFrom:"
	| words |
	(input includes: Character space) ifFalse: [^ input].
	self halt.
	words := (input splitBy: ' ') collect: [:word | word asLowercase].
	^ ((words allButFirst collect: [:w | w capitalized]) asOrderedCollection addFirst: words first; yourself) join