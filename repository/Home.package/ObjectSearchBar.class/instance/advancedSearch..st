advanced search
advancedSearch: aString

	| cst query result |
	cst := HomeSearchLanguage match: aString startingFrom: #RootObjectFilter.
	query := HomeConstructSearchQuery new value: cst.
	result := soup select: [:obj | query satisfiedBy: obj].
	^ result asArray