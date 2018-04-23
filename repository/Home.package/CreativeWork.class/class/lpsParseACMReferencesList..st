lps-loading
lpsParseACMReferencesList: aString 
	
	aString lines groupsOf: 3 atATimeCollect: [:emptyLine :number :ref |
		"Check for doi"
			"If there is a doi try to resolve the issue by using the doi"
		
			
			
		"Otherwhise guess parts"].