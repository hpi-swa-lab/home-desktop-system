as yet unclassified
for: anObject withPool: aPool

	| newOnDisk |
	newOnDisk := self new.
	newOnDisk setUuid: anObject uuid.
	newOnDisk setPool: aPool.
	^ newOnDisk