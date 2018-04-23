lps-loading
freeCiteResponseToDictionary: aCitationElement

	| authorElements authors collection publisher title year |
	[title := (aCitationElement firstTagNamed: #title) ifNotNil: [:e | e contentString].]
		on: NotFound
		do: [title := ''].
		
	[publisher := (aCitationElement firstTagNamed: #publisher) ifNotNil: [:e | e contentString].]
		on: NotFound
		do: [publisher := nil].
	
	[year := (aCitationElement firstTagNamed: #year) ifNotNil: [:e | e contentString asInteger asYear].]
		on: NotFound
		do: [year := nil].
		
	[authorElements := (aCitationElement firstTagNamed: #authors) elements.
	 authors := authorElements collect: [:e | e contentString]]
		on: NotFound
		do: [authors := #()].
		
	[collection := (aCitationElement firstTagNamed: #booktitle) ifNotNil: [:e | e contentString].]
		on: NotFound
		do: [collection := nil].
		
	collection ifNil: [
		[collection := (aCitationElement firstTagNamed: #journal) ifNotNil: [:e | e contentString].]
			on: NotFound
			do: [collection := nil].].
	
	^ Dictionary newFrom: {
		#title -> title.
		#publisher -> publisher.
		#publicationDate -> year.
		#authors -> authors.
		#partOf -> collection }