as yet unclassified
elementsOfFolder: anEntry

	| entries |
	anEntry item isRackFolder ifFalse: [^#()].
	
	entries := anEntry item entries.
	
	entries do: [:e | e item addDependent: self].
	
	^ entries