*Home-World
asBibtexString

	^ (self allSatisfy: [:o | o respondsTo: #asBibtexString])
		ifTrue: [(self collect: [:o | o asBibtexString]) asArray joinSeparatedBy: String cr, String cr]
		ifFalse: [self error: 'Not all elements of the collection can be stored in bibtex']