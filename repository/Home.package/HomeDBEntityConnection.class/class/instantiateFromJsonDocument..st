as yet unclassified
instantiateFromJsonDocument: aJsonDocument

	| targetUuid |
	targetUuid := UUID withAll: ((aJsonDocument at: 'targetUuid') at: 'json_values').
	^ DomainObject allSubInstances detect: [:each | each uuid = targetUuid] ifNone: [^ super instantiateFromJsonDocument: aJsonDocument]