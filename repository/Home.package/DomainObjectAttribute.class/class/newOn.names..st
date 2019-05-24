private
newOn: obj names: names
	"for internal use only. 'names' should already be filtered to only the ones that 'obj' actually understands."
	^ self newOn: obj names: names combinedName: [names first]