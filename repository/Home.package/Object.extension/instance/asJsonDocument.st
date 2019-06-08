*Home-Database
asJsonDocument

	| json |
	json := JsonObject new.
	json at: 'sq_class' put: self class name.
	self class allInstVarNames do: [:instVarName |
		| instVar |
		instVar := self instVarNamed: instVarName.
		(instVar respondsTo: #jsonWriteOn:) ifFalse: [ instVar := instVar asJsonDocument ].
		json at: instVarName put: instVar ].
	self class isVariable ifTrue: [ 
		json at: 'sq_values' put: 
			(( 1 to: self size ) collect: [:i | self at: i ])].
	^ json