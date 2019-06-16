manual adjustments
edit
	"ask the user to re-organize his priorities"
	"        self edit        "
	Types sort: [:a :b | UIManager default chooseFrom: {a class name . b class name} values: {true . false} title: 'Which is more important?'].
	self prioritiesChanged.