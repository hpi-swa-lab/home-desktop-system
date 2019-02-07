as yet unclassified
for: anObject

	| newOnDisk |
	newOnDisk := self new.
	newOnDisk setUuid: anObject uuid.
	^ newOnDisk