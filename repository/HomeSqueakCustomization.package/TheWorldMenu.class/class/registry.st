open-menu registry
registry
	"Answer the registry of dynamic open commands"
	
	^OpenMenuRegistry ifNil: [OpenMenuRegistry := OrderedCollection new].
