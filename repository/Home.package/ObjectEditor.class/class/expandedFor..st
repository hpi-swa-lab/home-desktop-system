instance creation
expandedFor: anObject

	^ self new
		instance: anObject;
		refreshFields;
		yourself