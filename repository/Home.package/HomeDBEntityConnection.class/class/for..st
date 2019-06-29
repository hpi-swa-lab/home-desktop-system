as yet unclassified
for: anEntity

	| instance |
	instance := self new.
	instance targetUuid: anEntity uuid.
	instance targetLabel: anEntity asString.
	^ instance