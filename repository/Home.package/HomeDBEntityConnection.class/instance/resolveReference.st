accessing
resolveReference

	| object |
	object := DomainObject allSubInstances detect: [:each | each uuid = self targetUuid] ifNone: [^ self].
	self become: object.