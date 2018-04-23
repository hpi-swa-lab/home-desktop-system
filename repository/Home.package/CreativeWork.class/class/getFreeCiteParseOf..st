lps-loading
getFreeCiteParseOf: aString

	| response document |
	response := WebClient new 
		httpPost: 'http://freecite.library.brown.edu/citations/create' 
		content: 'citation=' , aString squeakToUtf8 
		type: nil
		do: [:req |
			req headerAt: 'accept' put: 'text/xml'].
		
	document := XMLDOMParser parseDocumentFrom: response content readStream.
	^ self freeCiteResponseToDictionary: document elements first