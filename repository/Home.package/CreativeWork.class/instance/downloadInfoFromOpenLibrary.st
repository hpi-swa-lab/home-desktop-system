downloading
downloadInfoFromOpenLibrary

	<rackOperationLabel: 'download info from open library' inContextMenus: true>

	| url response openLibraryInfo |
	(self has: #isbn) ifFalse: [UIManager notify: 'The work has to have an ISBN for this to work'. ^ false].
	url := 'https://openlibrary.org/api/books?bibkeys=ISBN:{1}&format=json&jscmd=data' format: {self isbn}.
	response := WebClient httpGet: url.
	response isSuccess ifFalse: [UIManager inform: 'The service is not reachable'. ^ self].
	openLibraryInfo := Json readFrom: response content readStream.
	openLibraryInfo values ifEmpty: [UIManager inform: 'No data was found'. ^ self].
	openLibraryInfo := openLibraryInfo values first.
	
	"Merge data"
	(self ? #title) ifNil: [|olTitle|
		olTitle := openLibraryInfo title.
		(openLibraryInfo includesKey: 'subtitle') ifTrue: [olTitle := olTitle, ':', String space, openLibraryInfo subtitle].
		self title: olTitle].
	
	(self ? #numpages) ifNil: [
		(openLibraryInfo includesKey: 'number_of_pages') ifTrue: [
			self numpages: (openLibraryInfo at: 'number_of_pages')]].
	
	self changed.