as yet unclassified
chooseObject

	| objects |
	objects := DomainObject allSubInstances.
	^ UIManager default chooseFrom: objects values: objects