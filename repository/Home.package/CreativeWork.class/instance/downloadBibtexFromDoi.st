downloading
downloadBibtexFromDoi

	<rackOperationLabel: 'download info for doi' inContextMenus: true>

	| url response bibtexString |
	(self has: #doi) ifFalse: [UIManager notify: 'The work has to have a DOI for this to work'. ^ false].
	(self ? #title) ifNil: [UIManager notify: 'The work should have a title for the merge to work'. ^ false].
	
	url := 'http://dx.doi.org/{1}' format: {self doi}.
	response := WebClient new httpGet: url do: [:req |
		req headerAt: 'Accept' put: 'text/bibliography; style=bibtex'].
	response isSuccess ifFalse: [UIManager inform: 'The service is not reachable'. ^ self].
	bibtexString := response content readStream contents.
	
	BibtexImporter importFrom: bibtexString.
	self changed.