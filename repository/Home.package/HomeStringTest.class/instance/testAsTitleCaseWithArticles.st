tests
testAsTitleCaseWithArticles

	| articles |
	articles := #('a' 'an' 
		'the' 'these' 'those' 'this' 'that' 
		'his' 'her' 'its'
		'is' 'are' 'was' 'were' 'has' 'have' 'had' 'for'
		'with' 'of' 'whose' 'in' 'through' 'by' 'for' 'on' 'behind' 'and' 'to' 'so' 'as' 'because'
		'which' 'that' ).
	
	articles do: [:article |
		self assert: 'About ' , article , ' Topic' equals: ('about ' , article , ' topic') asTitleCase.
		self assert: article capitalized , ' Title' equals: (article , ' title') asTitleCase.
		self assert: 'About: ' , article capitalized , ' Topic' equals: ('about: ' , article , ' topic') asTitleCase.
		self assert: 'About - ' , article capitalized , ' Topic' equals: ('about - ' , article , ' topic') asTitleCase.]
