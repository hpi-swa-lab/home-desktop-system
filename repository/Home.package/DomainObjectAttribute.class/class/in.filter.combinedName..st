instance creation
in: obj filter: filterBlock combinedName: combinedName
	"finds all attributes that match the given filter block. It takes 2 arguments: the name of the attribute, and its value"
	^ self
		newOn: obj
		names: (((obj ?? #allMemberValues) select: [:assoc | assoc value notNil and: [filterBlock cull: assoc key cull: assoc value]]) collect: [:keyAndValue | keyAndValue key])
		combinedName: combinedName