lps-loading
getFreeCiteParseOfAll: aCollectionOfStrings

	| response document citationElements |
	response := WebClient new 
		httpPost: 'http://freecite.library.brown.edu/citations/create' 
		content: ((aCollectionOfStrings collectWithIndex: [:str :index | 'citation[]=' , str squeakToUtf8]) joinSeparatedBy: '&') 
		type: nil
		do: [:req |
			req headerAt: 'accept' put: 'text/xml'].
		
	document := XMLDOMParser parseDocumentFrom: response content readStream.
	
	citationElements := OrderedCollection new.
	document elements do: [:element |
		element tagsNamed: #citation childrenDo: [:e | citationElements add: e]].
	
	^ citationElements collect: [:citation |
		self freeCiteResponseToDictionary: citation]