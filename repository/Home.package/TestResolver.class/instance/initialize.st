as yet unclassified
initialize

	testData := Dictionary new.

	testData at: 'testxxxtest:example1' put: (Dictionary new
		at: #messageA put: #A1;
		at: #messageB put: #B1;
		yourself).
		
	testData at: 'testxxxtest:example2' put: (Dictionary new
		at: #messageA put: #A2;
		at: #messageB put: #B2;
		yourself).
		