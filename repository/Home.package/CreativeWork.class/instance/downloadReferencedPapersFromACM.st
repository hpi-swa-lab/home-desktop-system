downloading
downloadReferencedPapersFromACM

	| urlPattern response raw work  newReferences id referencesUrl |
	urlPattern := 'https://dl.acm.org/results.cfm?query=allDOIs.doi:({1})&within=owners.owner=GUIDE&filtered=&dte=&bfr='.
	(self has: #doi) ifFalse: [^ false].
	(self ? #lpsACMHasInsufficientData) = true ifTrue: [^ false].
	response := WebClient httpGet: (urlPattern format: {self ? #doi}).
	raw := response isSuccess 
		ifTrue: [Transcript showln: 'success'. response content]
		ifFalse: [Transcript showln: 'failure'. '{}'. ^ false].
	
	id := (raw allRegexMatches: 'id=\d*&') first copyWithoutAll: 'id=&'.
	referencesUrl := 'https://dl.acm.org/tab_references.cfm?id={1}&type=article&usebody=tabbody&cfid=1023047572&cftoken=62733917' format: {id}.
	response := WebClient httpGet: referencesUrl.
	raw := response isSuccess 
		ifTrue: [Transcript showln: 'success'. response content]
		ifFalse: [Transcript showln: 'failure'. '{}'. ^ false].
	(raw includesSubstring: 'References are not available')
		ifTrue: [	self lpsACMHasInsufficientData: true. ^ false].
	
	
	self halt.
	
	work := nil.
	
	work references size < 5 ifTrue: [
		self lpsACMHasInsufficientData: true.
		^ false].
	
	self semanticScholarId: work paperId.
	
	newReferences := work references collect: [:reference | | cw candidates |
		candidates := CreativeWork all search: reference paperId.
		candidates size = 1
			ifTrue: [cw := candidates first]
			ifFalse: [
				cw := CreativeWork 
					resolve: reference title 
					createBasedOn: reference title
					automaticAccept: true].
		cw semanticScholarId: reference paperId.
		((cw has: #publicationDate) or: [reference year isNil]) ifFalse: [cw publicationDate: reference year asYear].
		reference isEmptyOrNil ifFalse: [
			cw semanticScholarVenue: reference venue].
		
		cw tags: (cw ?? #tags) , {'live programming study'}.
		cw liveprogstudyOrigins: (cw ?? #liveprogstudyOrigins) , (cw liveprogstudyOriginKeywords collect: [:keyword | {#hull . keyword}]).
		cw ].
	self semanticScholarReferences: newReferences.
	(TheRack / #'Live Programming Systems Survey' / #'literature inbox') addAll: newReferences.
	^ true	