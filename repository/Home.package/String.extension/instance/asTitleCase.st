*Home-Bibliography
asTitleCase
	
	| listOfIgnoredWords resultString |
	
	self ifEmpty: [^ self].
	
	listOfIgnoredWords := #('a' 'an' 
		'the' 'these' 'those' 'this' 'that' 
		'his' 'her' 'its'
		'is' 'are' 'was' 'were' 'has' 'have' 'had' 'for'
		'with' 'of' 'whose' 'in' 'through' 'by' 'for' 'on' 'behind' 'and' 'to' 'so' 'as' 'because'
		'which' 'that').

	"The beginning of the string should be capitalized."
	resultString := self copyWithRegex: '^\w' matchesTranslatedUsing: [:m | m capitalized].

	"All words that are not in the list of ingored words should be capitalized."
	resultString := resultString copyWithRegex: '([\w'']+)' matchesTranslatedUsing: [:match | 
			(listOfIgnoredWords includes: match) ifFalse: [match capitalized] ifTrue: [match]].

	"A word after punctuation should be capitalized."
	resultString := resultString copyWithRegex: '[-.:!?&/]\s*(\w)' matchesTranslatedUsing: 
				[:match | match copyWithRegex: '\w' matchesTranslatedUsing: [:m | m capitalized]].
		
	^ resultString
