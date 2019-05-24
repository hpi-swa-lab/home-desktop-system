instance creation
in: obj names: allNames
	"search for an attribute with any of the given names. Asks the user lazily when multiple are found"
	^ self newOn: obj names: (allNames select: [:name | obj basicRespondsTo: name])