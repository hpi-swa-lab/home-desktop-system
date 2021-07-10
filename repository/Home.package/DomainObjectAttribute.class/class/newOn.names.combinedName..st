private
newOn: obj names: names combinedName: combinedNameOrBlock
	"for internal use only. 'names' should already be filtered to only the ones that 'obj' actually understands."
	^ names
		ifEmpty: [^ nil]
		ifNotEmpty: [^ self new
			object: obj;
			attributeNames: names asOrderedCollection;
			combinedName: combinedNameOrBlock value;
			yourself]