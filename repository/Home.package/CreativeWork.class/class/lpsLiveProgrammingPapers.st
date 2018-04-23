as yet unclassified
lpsLiveProgrammingPapers

	^ (self lpsStudyPapers 
		select: [:c | c liveprogstudyOrigins includesAnyOf: #(
			('ieee' 'live programming')
			('manual' 'live programming')
			('acm' 'live programming')
			('dblp' 'live programming')
			('liveProgrammingWorkshopProceedings' 'live programming')
			('live workshop proceedings' 'live programming')
			('LIVE' 'live programming')
			('ieee' 'live+programming')
			('acm' 'live+programming')
			('dblp' 'live+programming'))])
		"reject: [:c | c liveprogstudyOriginLocations asSet includesAnyOf: #(
			'hub'
			'toplap' 
			'toplap wiki papers (https://toplap.org/wiki/Videos,_Articles_and_Papers)' 
			'strangeLoopSearch')]"