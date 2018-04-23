as yet unclassified
lpsLiveCodingPapers

	^ (self lpsStudyPapers 
		select: [:c | c liveprogstudyOrigins includesAnyOf: #(
			('ieee' 'live coding')
			('acm' 'live coding')
			('dblp' 'live coding')
			('iclc' 'live coding')
			('ieee' 'live+coding')
			('acm' 'live+coding')
			('dblp' 'live+coding'))])
		"reject: [:c | c liveprogstudyOriginLocations includesAnyOf: #(
			'hub'
			'toplap' 
			'toplap wiki papers (https://toplap.org/wiki/Videos,_Articles_and_Papers)' 
			'strangeLoopSearch')]"