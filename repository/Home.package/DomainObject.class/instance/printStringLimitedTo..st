printing
printStringLimitedTo: limit
	"using a main name and as many additional state strings that fit"
	| nameAndType name stateString |
	nameAndType := self mainPrintNameAndType.
	name := nameAndType key. 
	stateString := self stateStringLimitedTo: (limit - (name size) - 3) without: nameAndType value.
	^ stateString
		ifEmpty: [name]
		ifNotEmpty: [name , ' (' , stateString , ')']