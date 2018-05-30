open-menu registry
registeredOpenCommands
	"Answer the list of dynamic open commands, sorted by description"
	
	^self registry asArray sort: [ :a :b | a first asLowercase < b first asLowercase ]