instance resolution
resolve: propertyDict ifMultiple: multipleBlock ifNone: noneBlock

	^ (self resolveAll: propertyDict)
		ifEmpty: [^ noneBlock]
		ifNotEmpty: [:objs |
			objs size = 1
				ifTrue: [objs first]
				ifFalse: [multipleBlock value: objs]]