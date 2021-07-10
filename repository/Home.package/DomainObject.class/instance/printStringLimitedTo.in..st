printing
printStringLimitedTo: limit in: container
	"using a main name and as many additional state strings that fit"
	| nameAndType name stateString |
	nameAndType := self mainPrintNameAndTypeIn: container.
	name := nameAndType key asString. 
	stateString := self stateStringLimitedTo: (limit - (name size) - 3) without: nameAndType value in: container.
	^ stateString
		ifEmpty: [name]
		ifNotEmpty: [name , ' (' , stateString , ')']