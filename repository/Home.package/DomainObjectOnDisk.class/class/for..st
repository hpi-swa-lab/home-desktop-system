instance creation
for: anObject

	| newOnDisk |
	newOnDisk := self new.
	newOnDisk setUuid: anObject uuid.
	^ newOnDisk