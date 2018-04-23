downloading
downloadReferencedPapersFromSemanticScholar

	| urlPattern response raw work  newReferences |
	urlPattern := 'http://api.semanticscholar.org/v1/paper/{1}?include_unknown_references=true'.
	(self has: #doi) ifFalse: [^ false].
	(self ? #lpsSemanticScholarHasInsufficientData) = true ifTrue: [^ false].
	response := WebClient httpGet: (urlPattern format: {self ? #doi}).
	raw := response isSuccess 
		ifTrue: [Transcript showln: 'success'. response content]
		ifFalse: [Transcript showln: 'failure'. '{}'. ^ false].
	work := Json readFrom: raw readStream.
	work references size < 5 ifTrue: [
		self lpsSemanticScholarHasInsufficientData: true.
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