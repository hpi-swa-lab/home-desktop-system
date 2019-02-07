resolving
knowsSomethingAbout: aUriString 
	
	^ (aUriString includesSubString: 'www.wikidata.org') and: [aUriString includesSubString: '/entity']