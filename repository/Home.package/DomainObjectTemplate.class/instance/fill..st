operations
fill: do
	"fill the given DomainObject with the key-value tuples of this template"
	self values do: [:nameAndValue | self fill: do name: nameAndValue key value: nameAndValue value]