private
fileAttribute: obj
	"prioritised list of attribute names to look for"
	^ DomainObjectAttribute in: obj names: #(file fileName filePath path)