bibtex
bibTexPublicationType

	| collectionTitle |

	(self has: #publicationType) ifTrue: [^ self getAdditionalStateAt: #publicationType].
	(self has: #publicationtype) ifTrue: [^ self getAdditionalStateAt: #publicationtype].
	
	collectionTitle := (self ? #partOf) asString asLowercase.
	
	(collectionTitle includesSubstring: 'proceedings') ifTrue: [^ 'inproceedings'].
	(collectionTitle includesSubstring: 'journal') ifTrue: [^ 'article'].
	
	(self has: #journal) ifTrue: [^ 'article'].
	
	^ 'misc'