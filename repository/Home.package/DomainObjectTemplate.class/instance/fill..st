operations
fill: do
	self values do: [:nameAndValue | self fill: do name: nameAndValue key value: nameAndValue value]