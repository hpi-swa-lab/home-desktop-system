actions
UnstructuredQuery: thisNode with: aNode

	| terms |
	terms := thisNode interval contents asLowercase findTokens: ' '.
	^ self factory and: (terms collect: [:term |
							self factory
								compare: (self factory immediateValue: term)
								withAllUsing: #isSimilarTo:])