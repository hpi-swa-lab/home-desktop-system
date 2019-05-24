private
fileAttribute: obj
	"prioritised list of attribute names to look for"
	^ DomainObjectAttribute in: obj
		filter: [:name :value | (#(file fileName filePath path) includes: name) and: [value isString]]
		combinedName: 'file'