*Home-World
asSwaBibtexString

	^ (self allSatisfy: [:o | o respondsTo: #asSwaBibtexString])
		ifTrue: [(self collect: [:o | o asSwaBibtexString]) asArray joinSeparatedBy: String cr, String cr]
		ifFalse: [self error: 'Not all elements of the collection can be stored in bibtex']