as yet unclassified
makeEquivalentSurrogate: aSurrogate and: anotherSurrogate

	| class1 class2 unionClass |
	class1 := self equivalenceClassFor: aSurrogate.
	class2 := self equivalenceClassFor: anotherSurrogate.
	
	unionClass := class1 union: class2.
	unionClass do: [:s | 
		self Classes at: s uri put: unionClass].
	