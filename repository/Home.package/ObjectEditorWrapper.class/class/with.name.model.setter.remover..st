as yet unclassified
with: anObject name: aString model: aModel setter: anExecutable remover: anotherExecutable

	^ (super with: anObject name: aString model: aModel)
		setter: anExecutable;
		remover: anotherExecutable;
		yourself