*Home-Database
instantiateFromJsonDocument: json

	| instance |
	self isVariable ifTrue: [ | values |
		values := json at: 'sq_values'.
		instance := self basicNew: values size.
		values withIndexDo: [:val :i | instance basicAt: i put: val ].
	] ifFalse: [ instance := self basicNew ].	
	self allInstVarNames do: [:instVarName |
		json at: instVarName ifPresent: [:val |
			(val isDictionary and: [val includesKey: 'sq_class']) ifTrue: [
				| innerObjectClass |
				innerObjectClass := Smalltalk at: (val at: 'sq_class') asSymbol.
				val := (innerObjectClass instantiateFromJsonDocument: val)].
			instance instVarNamed: instVarName put: val ]].
	^ instance