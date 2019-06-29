manual adjustments
prioritiesChanged
	"In order for their visualizations / representations to update, call #changed on them all"
	"        self prioritiesChanged        "
	DomainObject all do: #changed