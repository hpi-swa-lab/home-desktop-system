*Home-UI
objectEditorPrintString

	| aStream aCollection |
	aStream := WriteStream on: (String new: 500).
	
	self shouldBePrintedAsLiteral ifTrue: [
		self printAsLiteralOn: aStream.
		^ aStream contents].
	
	aCollection := OrderedCollection new: 5.
	self do: [:element | aCollection size < 5 ifTrue: [aCollection add: element]].
	
	aCollection do: [:element | aStream nextPutAll: '- '. aStream nextPutAll: (element objectEditorPrintString)] separatedBy: [aStream cr].
	
	self size > 5 ifTrue: [aStream cr; << '... '; << (self size - 5) asString; << ' more elements'].
	
	^ aStream contents