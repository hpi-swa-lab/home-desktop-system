private
fileAttribute: obj
	^ DomainObjectAttribute in: obj
		filter: [:name :value | (#(file fileName filePath path) includes: name) and: [value isString]]
		combinedName: 'file'