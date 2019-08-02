instance creation
fileReaderServicesForFile: fullName suffix: suffix
	"add a generic drop service to drop an Item into the world"
		
	^ {DroppingServiceEntry  
		provider: self
		label: 'drop Into World'
		selector: #worldIcon
		description: 'store the object'
		buttonLabel: 'drop into the World'}