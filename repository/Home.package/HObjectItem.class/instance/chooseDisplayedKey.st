refactor
chooseDisplayedKey

	"ToDo smarter"
	| key |
	key := UIManager default chooseFrom: #(fullName email) values: #(fullName email).
	key ifNotNil: [self displayedKey: key. self changed]