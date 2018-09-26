bibtex
bibTexFields

	| associations fields date publicationType |
	fields := (self additionalStateSelectors , {#title}) asSet intersection: #(
		title journal series address doi abstract location publisher series advisors note issue_date
		issn isbn number issue volume file howpublished school url organization urldate).
		
	associations := (fields collect: [:f | f -> (self ? f)]) reject: [:a | a value isNil].
		
	publicationType := self bibTexPublicationType asString asLowercase.
	((publicationType includesSubstring: 'proceedings') 
		or: [publicationType includesSubstring: 'article']) ifTrue: [
		self partOf isString
			ifTrue: [associations add: (#booktitle -> self partOf)]
			ifFalse: [associations add: (#booktitle -> self partOf title)]].
	
	(self has: #authors)
		ifTrue: [	associations add: (#author -> ((self authors collect: [:a | a lastName , ', ' , a firstName]) joinSeparatedBy: ' and '))]. 
			
	(self has: #publicationUrl) ifTrue: [associations add: #url -> self publicationUrl].
			
	((self has: #publicationDate) or: [self has: #publicationDate]) ifTrue: [
		date := self ? #publicationDate ifNil: [self ? #publicationdate].
		associations add: #year -> date year].
	
	((self has: #pages) and: [self pages isInterval]) ifTrue: [
		associations add: #pages -> (self pages first asString , '--' , self pages last asString)].
	
	#('lpsSynthesisMethodOfInquiry' 'lpsSynthesisIntendedEffect' 'lpsSynthesisDomains' 'lpsSynthesisMotivation' 'liveprogstudyOrigins') collect: [:key |
		associations add: key -> ((self ?? key asSymbol) asArray joinSeparatedBy: ', ')].
	
	^ associations
		
	