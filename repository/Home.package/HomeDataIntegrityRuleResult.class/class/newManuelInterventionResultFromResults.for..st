as yet unclassified
newManuelInterventionResultFromResults: aCollectionOfResults for: anObject

	| newResult |
	newResult := self new
		object: anObject;
		yourself.

	aCollectionOfResults 
		ifEmpty: [newResult noActionWasRequired]
		ifNotEmpty: [newResult
			rules: (aCollectionOfResults gather: [:r | r rules]);
			requiresManualIntervention].
		
	^ newResult
