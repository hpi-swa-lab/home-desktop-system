user interface
splitIdentifier: aString
	"Splits a camel case selector into lowercase atoms without colons"
	
	| tokens lastIndex string |

	string := aString.
	tokens := OrderedCollection new.
	lastIndex := 1.
	string withIndexDo: [ :char :index |
		(char isUppercase or: [char isLetter not]) ifTrue: [
			(index > 1) ifTrue: [
				tokens add: (string copyFrom: lastIndex to: (index - 1)) asLowercase. ].
			lastIndex := index. ]].
	(lastIndex <= (string size)) ifTrue: [
		tokens add: (string copyFrom: lastIndex to: (string size)) asLowercase. ].
	^ tokens collect: [:token | token select: [:c | c isLetter or: [c isDigit]]] thenSelect: [:token | token notEmpty ]