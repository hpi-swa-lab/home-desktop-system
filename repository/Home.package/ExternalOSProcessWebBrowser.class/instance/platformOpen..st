external calls
platformOpen: url
	
	^ OSProcess command: ('explorer "{1}"' format: {url})