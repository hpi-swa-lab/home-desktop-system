instance creation
collapsedFor: anObject withCommandHistory: aHistory

	^ self new
		instance: anObject;
		commandHistory: aHistory;
		yourself