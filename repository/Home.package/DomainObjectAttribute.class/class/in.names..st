instance creation
in: obj names: names
	"search for an attribute with any of the given names, tested from left to right"
	names do: [:name |
		(obj basicRespondsTo: name) ifTrue: [^ self in: obj name: name]].
	 ^ nil