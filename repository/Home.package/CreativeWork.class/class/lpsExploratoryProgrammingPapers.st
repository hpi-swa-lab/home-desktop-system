as yet unclassified
lpsExploratoryProgrammingPapers

	^ (self lpsStudyPapers 
		select: [:c | c liveprogstudyOrigins includesAnyOf: #(
			('ieee' 'exploratory programming')
			('acm' 'exploratory programming')
			('dblp' 'exploratory programming')
			('ieee' 'exploratory+programming')
			('acm' 'exploratory+programming')
			('dblp' 'exploratory+programming'))])
		"reject: [:c | c liveprogstudyOriginLocations includesAnyOf: #(
			'hub'
			'toplap' 
			'toplap wiki papers (https://toplap.org/wiki/Videos,_Articles_and_Papers)' 
			'strangeLoopSearch')]"