downloading
downloadAbstractFromSemanticScholar

	| urlPattern  response url |
	urlPattern := 'https://www.semanticscholar.org/search?q={1}&sort=relevance'.
	url := urlPattern format: {self title copyReplaceAll: String space with: '%20'}.
	response := WebClient httpGet: url.
	response isSuccess
		ifFalse: [^ '']
		ifTrue: [ | page |
			page := response content.
			page.
			self halt.]
	
	
	