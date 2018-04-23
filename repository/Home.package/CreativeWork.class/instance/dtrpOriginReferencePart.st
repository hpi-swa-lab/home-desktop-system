accessing
dtrpOriginReferencePart

	| result |
	result := ''.
	(self ? #publicationtype) asLowercase = 'inproceedings' ifTrue: [
		result := self partOf title.
		(self has: #publisher) ifTrue: [
			result := result , ', ' , self publisher ]].
	
	(self ? #publicationtype) = 'article' ifTrue: [
		result := result , ('{1} {2}({3}), {4}{5}' format: {
			self journal.
			self volume asString.
			self number asString.
			'pp. ' , self pages first asString , '-' , self pages last asString.
			(self has: #publisher) 
				ifTrue: [', ' , self publisher ]
				ifFalse: ['']
		})].
	
	(self ? #publicationtype) = 'book' ifTrue: [
		result := result , (self answer: #publisher or: '')].
	
	^ result