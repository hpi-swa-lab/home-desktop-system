instance creation
for: anEntity

	^ self new
		uuid: anEntity uuid;
		label: anEntity printString;
		yourself