resolving
allInformationOn: anUri
	"Should return a collection of associations: attributeName -> attributeValue"

	^ (self lookup: anUri) associations