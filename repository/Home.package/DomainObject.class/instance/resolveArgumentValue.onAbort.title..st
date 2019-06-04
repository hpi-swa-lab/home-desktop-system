dynamic behavior
resolveArgumentValue: type onAbort: abortBlock title: title
	| objects result |
	objects := (Smalltalk at: #DomainObject) all select: [:o | (o isKindOf: (Smalltalk classNamed: type)) or: [o isOfType: type]].
	result := UIManager default chooseFrom: objects values: objects title: title.
	result ifNil: abortBlock.
	^ result