types
allTemplates
	| result |
	result := OrderedCollection new.
	self allSubclassesDo: [:typeClass | result addAll: (typeClass instance templates)].
	^ result