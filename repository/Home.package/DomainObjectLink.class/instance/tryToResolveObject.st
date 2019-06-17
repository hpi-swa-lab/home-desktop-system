private
tryToResolveObject

	DomainObject allSubInstancesDo: [:o |
		o uuid = self uuid ifTrue: [^ o]].
	
	"else"
	DomainObjectOnDisk allInstancesDo: [:o |
		o uuid = self uuid ifTrue: [^ o]].
	
	^ self