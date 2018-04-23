bibtex
bibTexFields

	| associations fields date |
	fields := (self additionalStateSelectors , {#title}) asSet intersection: #(
		title journal series address doi abstract location pages publisher series advisors note issue_date
		issn isbn number issue volume file howpublished school url organization urldate).
		
	associations := (fields collect: [:f | f -> (self ? f)]) reject: [:a | a value isNil].
		
	(self bibTexPublicationType asLowercase includesSubstring: 'proceedings') ifTrue: [
		self partOf isString
			ifTrue: [associations add: (#booktitle -> self partOf)]
			ifFalse: [associations add: (#booktitle -> self partOf title)]].
	
	(self has: #authors)
		ifTrue: [	associations add: (#author -> ((self authors collect: [:a | a lastName , ', ' , a firstName]) joinSeparatedBy: ' and '))]. 
			
	(self has: #publicationUrl) ifTrue: [associations add: #url -> self publicationUrl].
			
	((self has: #publicationDate) or: [self has: #publicationDate]) ifTrue: [
		date := self ? #publicationDate ifNil: [self ? #publicationdate].
		associations add: #year -> date year].
	
	#('lpsSynthesisMethodOfInquiry' 'lpsSynthesisIntendedEffect' 'lpsSynthesisDomains' 'lpsSynthesisMotivation') collect: [:key |
		associations add: key -> ((self ?? key asSymbol) joinSeparatedBy: ', ')].
	
	^ associations
		
	