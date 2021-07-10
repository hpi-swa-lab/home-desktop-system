as yet unclassified
fits: anObject

	^ anObject isCollection and: [anObject allSatisfy: [:o | o respondsTo: #emailAddress]]