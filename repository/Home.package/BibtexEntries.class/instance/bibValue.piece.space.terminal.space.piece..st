actions
bibValue: aNode piece: x space: xx terminal: xxx space: xxxx piece: xxxxx

	| content |
	content := aNode interval contents.
	(content first isAnyOf: #(${ $( $")) 
		ifTrue: [content := content copyWithoutFirst allButLast].
	^ content