*Home-UI
objectEditorPrintString

	| aStream |
	aStream := WriteStream on: (String new: 20).
	aStream
	 print: start;
	 nextPutAll: ' - ';
	 print: stop.
	step ~= 1 ifTrue: [aStream nextPutAll: ' by '; print: step].
	^ aStream contents