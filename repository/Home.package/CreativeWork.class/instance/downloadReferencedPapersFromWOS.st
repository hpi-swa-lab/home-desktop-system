downloading
downloadReferencedPapersFromWOS

	| urlPattern response raw  |
	urlPattern := 'https://dl.acm.org/results.cfm?query=allDOIs.doi:({1})&within=owners.owner=GUIDE&filtered=&dte=&bfr='.
	(self has: #doi) ifFalse: [^ false].
	(self ? #lpsACMHasInsufficientData) = true ifTrue: [^ false].
	response := WebClient httpGet: (urlPattern format: {self ? #doi}).
	raw := response isSuccess 
		ifTrue: [Transcript showln: 'success'. response content]
		ifFalse: [Transcript showln: 'failure'. '{}'. ^ false].
	
	