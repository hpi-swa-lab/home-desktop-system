class initialization
fillInitialPriorities
	"I introduce the priority list to some known types in a good priority order"
	#(PersonLike EmailHaving ExternalFileHaving)
		do: [:name | Smalltalk at: name ifPresent: [:class | self indexOf: class instance]].