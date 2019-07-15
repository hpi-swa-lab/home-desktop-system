as yet unclassified
newFromDb: aDatabase

	| instance |
	instance := self new.
	instance database: aDatabase.
	instance connectWebsocket.
	^ instance