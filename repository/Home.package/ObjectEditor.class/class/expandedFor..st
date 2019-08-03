instance creation
expandedFor: anObject

	^ self new
		instance: anObject;
		commandHistory: CommandHistory new;
		refreshFields;
		yourself